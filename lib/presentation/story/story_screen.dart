import 'dart:async';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
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
      if (!isPaused && !_isAnimating) {
        setState(() {
          currentProgress += tick.inMilliseconds / storyDuration.inMilliseconds;
          if (currentProgress >= 1.0) {
            currentProgress = 0.0;
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

  /// Video uchun progressni set qilish
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
      return VideoPlayerWidget(
        videoUrl: url,
        isPaused: isPaused || _isAnimating || storyIndex != currentOuterIndex,
        onInitialized: (duration) {
          if (storyIndex == currentOuterIndex) {
            _updateStoryDuration(duration);
          }
        },
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
              progressMap[currentOuterIndex] = currentProgress;
              innerIndexMap[currentOuterIndex] = currentInnerIndex;

              currentOuterIndex = index;
              currentProgress = progressMap[index] ?? 0.0;

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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 75),
                        child: buildProgressBar(),
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
  final String videoUrl;
  final bool isPaused;
  final void Function(Duration)? onInitialized;

  const VideoPlayerWidget({
    super.key,
    required this.videoUrl,
    required this.isPaused,
    this.onInitialized,
  });

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl))
      ..initialize().then((_) {
        setState(() {
          _initialized = true;
        });

        widget.onInitialized?.call(_controller.value.duration);
        _controller.play();

        _controller.addListener(() {
          if (!mounted || !_controller.value.isInitialized) return;

          final duration = _controller.value.duration;
          final position = _controller.value.position;

          final parent = context.findAncestorStateOfType<_StoryScreenState>();
          if (duration.inMilliseconds > 0) {
            final progress = position.inMilliseconds / duration.inMilliseconds;
            parent?.setVideoProgress(progress);
          }

          final isEnded = position >= duration && !_controller.value.isPlaying;
          if (isEnded) {
            Future.microtask(() {
              parent?._goToNextStory();
            });
          }
        });
      }).catchError((error) {
        print('❌ Video yuklashda xato: $error');
      });
  }

  @override
  void didUpdateWidget(VideoPlayerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isPaused != widget.isPaused && _initialized) {
      if (widget.isPaused) {
        _controller.pause();
      } else {
        _controller.play();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Center(
        child: _initialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
