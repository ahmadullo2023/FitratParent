import 'dart:async';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class StoryScreen extends StatefulWidget {
  final List<List<String>> storiesData;
  final List stories;
  final int initialStoryIndex;

  const StoryScreen({
    super.key,
    required this.stories,
    required this.storiesData,
    required this.initialStoryIndex,
  });

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  late PageController _outerPageController;
  late PageController _innerPageController;
  bool _isLongPressing = false;
  bool _isAnimating = false;
  int currentOuterIndex = 0;

  Map<int, int> innerIndexMap = {};
  Map<int, double> progressMap = {};
  final Map<String, VideoPlayerController> _videoControllerCache = {};
  final Map<String, Duration> _videoPositionCache = {};

  Timer? _timer;
  Duration storyDuration = const Duration(seconds: 3);
  bool isPaused = false;

  @override
  void initState() {
    super.initState();
    currentOuterIndex = widget.initialStoryIndex;
    _outerPageController = PageController(initialPage: currentOuterIndex);
    innerIndexMap[currentOuterIndex] = 0;
    progressMap[currentOuterIndex] = 0.0;
    _innerPageController = PageController(initialPage: 0);
    WidgetsBinding.instance.addPostFrameCallback((_) => _startProgress());
  }

  double get currentProgress => progressMap[currentOuterIndex] ?? 0.0;
  int get currentInnerIndex => innerIndexMap[currentOuterIndex] ?? 0;

  set currentProgress(double value) => progressMap[currentOuterIndex] = value;
  set currentInnerIndex(int value) => innerIndexMap[currentOuterIndex] = value;

  /// Pause (and optionally reset) a cached video controller by url
  void _pauseVideoForUrl(String url, {bool reset = false}) {
    if (url.endsWith('.mp4') && _videoControllerCache.containsKey(url)) {
      final c = _videoControllerCache[url]!;
      if (c.value.isInitialized) {
        try {
          c.pause();
          if (reset) c.seekTo(Duration.zero);
        } catch (_) {}
      }
    }
  }

  void _startProgress() {
    if (isPaused || _isAnimating) return;

    final currentUrl = widget.storiesData[currentOuterIndex][currentInnerIndex];
    _timer?.cancel();

    if (currentUrl.endsWith('.mp4')) {
      currentProgress = 0.0;
      return;
    }

    storyDuration = const Duration(seconds: 3);

    const tick = Duration(milliseconds: 50);
    _timer = Timer.periodic(tick, (timer) {
      if (!isPaused && !_isAnimating && mounted) {
        setState(() {
          currentProgress += tick.inMilliseconds / storyDuration.inMilliseconds;
          if (currentProgress >= 1.0) {
            currentProgress = 0.0;

            final prevUrl =
                widget.storiesData[currentOuterIndex][currentInnerIndex];
            _pauseVideoForUrl(prevUrl, reset: true);

            if (currentInnerIndex <
                widget.storiesData[currentOuterIndex].length - 1) {
              currentInnerIndex++;
              _innerPageController.jumpToPage(currentInnerIndex);
            } else if (currentOuterIndex < widget.storiesData.length - 1) {
              _outerPageController.nextPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            } else {
              _timer?.cancel();
              Navigator.pop(context);
            }
          }
        });
      }
    });
  }

  void _pauseStory() {
    setState(() => isPaused = true);
    _timer?.cancel();
  }

  void _resumeStory() {
    setState(() => isPaused = false);
    _startProgress();
  }

  void _updateStoryDuration(Duration duration) {
    storyDuration = duration;
    _startProgress();
  }

  void _goToPreviousStory() {
    if (currentInnerIndex > 0) {
      final prevUrl = widget.storiesData[currentOuterIndex][currentInnerIndex];
      _pauseVideoForUrl(prevUrl, reset: true);

      setState(() {
        currentInnerIndex--;
        _innerPageController.jumpToPage(currentInnerIndex);
        currentProgress = 0.0;
        isPaused = false;
      });
      _startProgress();
    } else if (currentOuterIndex > 0) {
      _outerPageController.previousPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToNextStory() {
    if (currentInnerIndex < widget.storiesData[currentOuterIndex].length - 1) {
      final prevUrl = widget.storiesData[currentOuterIndex][currentInnerIndex];
      _pauseVideoForUrl(prevUrl, reset: true);

      setState(() {
        currentInnerIndex++;
        _innerPageController.jumpToPage(currentInnerIndex);
        currentProgress = 0.0;
        isPaused = false;
      });
      _startProgress();
    } else if (currentOuterIndex < widget.storiesData.length - 1) {
      _outerPageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pop(context);
    }
  }

  void setVideoProgress(double progress) {
    if (!isPaused && mounted) {
      setState(() {
        currentProgress = progress.clamp(0.0, 1.0);
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _outerPageController.dispose();
    _innerPageController.dispose();
    for (final controller in _videoControllerCache.values) {
      try {
        controller.removeListener(() {});
      } catch (_) {}
      controller.dispose();
    }
    _videoControllerCache.clear();
    super.dispose();
  }

  Widget buildProgressBar() {
    int total = widget.storiesData[currentOuterIndex].length;
    return Row(
      children: List.generate(total, (index) {
        double value;
        if (index < currentInnerIndex) {
          value = 1.0;
        } else if (index == currentInnerIndex) {
          value = currentProgress;
        } else {
          value = 0.0;
        }
        return Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            height: 3,
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(10),
              value: value,
              backgroundColor: Colors.grey.withOpacity(0.3),
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
            ),
          ),
        );
      }),
    );
  }

  Widget buildMedia(String url, int storyIndex) {
    if (url.endsWith('.mp4')) {
      if (!_videoControllerCache.containsKey(url)) {
        final controller = VideoPlayerController.networkUrl(Uri.parse(url));
        _videoControllerCache[url] = controller;

        controller.initialize().then((_) {
          if (mounted) {
            setState(() {});
            if (storyIndex == currentOuterIndex && !isPaused && !_isAnimating) {
              controller.play();
              _updateStoryDuration(controller.value.duration);
            }
          }
        });
      }

      final controller = _videoControllerCache[url]!;

      return VideoPlayerWidget(
        controller: controller,
        isPaused: isPaused || _isAnimating || storyIndex != currentOuterIndex,
      );
    }

    return Container(
      color: Colors.black,
      width: double.infinity,
      height: double.infinity,
      child: CachedNetworkImage(imageUrl: url, fit: BoxFit.contain),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onVerticalDragEnd: (details) {
          if (details.velocity.pixelsPerSecond.dy > 500) {
            Navigator.pop(context);
          }
        },
        child: PageView.builder(
          controller: _outerPageController,
          itemCount: widget.storiesData.length,
          physics: const BouncingScrollPhysics(),
          onPageChanged: (index) {
            setState(() {
              final prevOuterIndex = currentOuterIndex;
              final prevInnerIndex = innerIndexMap[prevOuterIndex] ?? 0;
              final prevUrl =
                  widget.storiesData[prevOuterIndex][prevInnerIndex];

              if (prevUrl.endsWith('.mp4') &&
                  _videoControllerCache.containsKey(prevUrl)) {
                final controller = _videoControllerCache[prevUrl]!;
                if (controller.value.isInitialized) {
                  _videoPositionCache[prevUrl] = controller.value.position;
                  try {
                    controller.pause();
                  } catch (_) {}
                }
              }

              currentOuterIndex = index;
              currentProgress = progressMap[index] ?? 0.0;
              currentInnerIndex = innerIndexMap[index] ?? 0;

              final newUrl =
                  widget.storiesData[currentOuterIndex][currentInnerIndex];
              if (newUrl.endsWith('.mp4') &&
                  _videoControllerCache.containsKey(newUrl)) {
                final controller = _videoControllerCache[newUrl]!;
                try {
                  final saved = _videoPositionCache[newUrl];
                  if (saved != null && saved > Duration.zero) {
                    controller.seekTo(saved);
                  } else {
                    controller.seekTo(Duration.zero);
                  }
                  controller.play();
                } catch (_) {}
              }

              try {
                _innerPageController.dispose();
              } catch (_) {}
              _innerPageController =
                  PageController(initialPage: currentInnerIndex);
              isPaused = false;
              _isAnimating = false;
              _timer?.cancel();
            });

            WidgetsBinding.instance.addPostFrameCallback((_) {
              _startProgress();
            });
          },
          itemBuilder: (context, index) {
            return AnimatedBuilder(
              animation: _outerPageController,
              builder: (context, child) {
                double value = 0.0;
                if (_outerPageController.position.haveDimensions) {
                  value = _outerPageController.page! - index;
                }
                value = value.clamp(-1.0, 1.0);
                bool isAnimatingNow = value.abs() > 0.01;

                if (isAnimatingNow != _isAnimating) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    setState(() {
                      _isAnimating = isAnimatingNow;
                      if (_isAnimating) {
                        _timer?.cancel();
                      } else if (!isPaused) {
                        _startProgress();
                      }
                    });
                  });
                }

                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateY(pi / 3 * value),
                  child: Stack(
                    children: [
                      const SizedBox(height: 12),
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onLongPressStart: (_) {
                          setState(() {
                            _isLongPressing = true;
                            if (!isPaused) _pauseStory();
                          });
                        },
                        onLongPressEnd: (_) {
                          setState(() {
                            _isLongPressing = false;
                            if (isPaused && !_isAnimating) _resumeStory();
                          });
                        },
                        onTapUp: (details) {
                          if (_isLongPressing || _isAnimating) return;
                          final dx = details.globalPosition.dx;
                          final third = MediaQuery.of(context).size.width / 3;
                          if (dx < third) {
                            _goToPreviousStory();
                          } else if (dx > 2 * third) {
                            _goToNextStory();
                          } else {
                            isPaused ? _resumeStory() : _pauseStory();
                          }
                        },
                        child: PageView.builder(
                          controller: _innerPageController,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.storiesData[index].length,
                          itemBuilder: (context, i) =>
                              buildMedia(widget.storiesData[index][i], index),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 24, left: 8, right: 8),
                        child: SafeArea(
                          child: buildProgressBar(),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class VideoPlayerWidget extends StatefulWidget {
  final VideoPlayerController controller;
  final bool isPaused;

  const VideoPlayerWidget({
    super.key,
    required this.controller,
    required this.isPaused,
  });

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  bool _isNextTriggered = false;

  @override
  void initState() {
    super.initState();

    if (widget.controller.value.isInitialized) {
      if (!widget.isPaused) widget.controller.play();
    }

    widget.controller.addListener(_onVideoUpdate);
  }

  void _onVideoUpdate() {
    if (!mounted || !widget.controller.value.isInitialized) return;

    final duration = widget.controller.value.duration;
    final position = widget.controller.value.position;

    final parent = context.findAncestorStateOfType<_StoryScreenState>();
    if (duration.inMilliseconds > 0) {
      final progress =
          (position.inMilliseconds / duration.inMilliseconds).clamp(0.0, 1.0);
      parent?.setVideoProgress(progress);
    }

    if (!_isNextTriggered &&
        duration > Duration.zero &&
        position >= duration - const Duration(milliseconds: 300)) {
      _isNextTriggered = true;
      Future.microtask(() {
        parent?._goToNextStory();
      });
    }
  }

  @override
  void didUpdateWidget(covariant VideoPlayerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.controller != widget.controller) {
      try {
        oldWidget.controller.removeListener(_onVideoUpdate);
      } catch (_) {}
      widget.controller.addListener(_onVideoUpdate);
      _isNextTriggered = false;
    }

    if (oldWidget.isPaused != widget.isPaused &&
        widget.controller.value.isInitialized) {
      if (widget.isPaused) {
        widget.controller.pause();
      } else {
        widget.controller.play();
      }
    }
  }

  @override
  void dispose() {
    try {
      widget.controller.removeListener(_onVideoUpdate);
    } catch (_) {}
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.controller.value.isInitialized) {
      return const Center(child: CupertinoActivityIndicator());
    }

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: SizedBox(
            width: widget.controller.value.size.width,
            height: widget.controller.value.size.height,
            child: VideoPlayer(widget.controller),
          ),
        ),
      ),
    );
  }
}
