import 'dart:async';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import '../home/bloc/home_bloc.dart';
import '../home/repository/home_repository.dart';

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
  int currentInnerIndex = 0;

  Timer? _timer;
  double progress = 0.0;
  Duration storyDuration = const Duration(seconds: 5);
  bool isPaused = false;
  double pausedProgress = 0.0;

  @override
  void initState() {
    super.initState();
    currentOuterIndex = widget.initialStoryIndex;
    _outerPageController = PageController(initialPage: currentOuterIndex);
    _innerPageController = PageController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startProgress();
    });
  }

  void _startProgress() {
    if (isPaused || _isAnimating) return; // Also check if animating

    _timer?.cancel();
    if (!isPaused && pausedProgress > 0.0) {
      progress = pausedProgress;
      pausedProgress = 0.0;
    }

    const tick = Duration(milliseconds: 50);
    _timer = Timer.periodic(tick, (timer) {
      if (!isPaused && !_isAnimating) { // Check both conditions
        setState(() {
          progress += tick.inMilliseconds / storyDuration.inMilliseconds;
          if (progress >= 1.0) {
            progress = 0.0;
            if (currentInnerIndex <
                widget.storiesData[currentOuterIndex].length - 1) {
              currentInnerIndex++;
              _innerPageController.animateToPage(
                currentInnerIndex,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
              _startProgress();
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
    setState(() {
      isPaused = true;
      pausedProgress = progress;
    });
    _timer?.cancel();
  }

  void _resumeStory() {
    setState(() {
      isPaused = false;
    });
    _startProgress();
  }

  void _updateStoryDuration(Duration duration) {
    setState(() {
      storyDuration = duration;
    });
    if (pausedProgress == 0.0) {
      progress = 0.0;
    }
    _startProgress();
  }

  void _goToPreviousStory() {
    if (currentInnerIndex > 0) {
      setState(() {
        currentInnerIndex--;
        _innerPageController.jumpToPage(currentInnerIndex);
        progress = 0.0;
        pausedProgress = 0.0;
        isPaused = false;
      });
      String prevUrl = widget.storiesData[currentOuterIndex][currentInnerIndex];
      if (!prevUrl.endsWith('.mp4')) {
        storyDuration = const Duration(seconds: 5);
      }
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
        progress = 0.0;
        pausedProgress = 0.0;
        isPaused = false;
      });
      String nextUrl = widget.storiesData[currentOuterIndex][currentInnerIndex];
      if (!nextUrl.endsWith('.mp4')) {
        storyDuration = const Duration(seconds: 5);
      }
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
          value = progress;
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
    bool isCurrentStory = storyIndex == currentOuterIndex;

    if (url.endsWith('.mp4')) {
      return VideoPlayerWidget(
        videoUrl: url,
        isPaused: isPaused || _isAnimating || !isCurrentStory, // Also pause if not current story
        onInitialized: (duration) {
          // Only update duration if this is the current story
          if (isCurrentStory) {
            _updateStoryDuration(duration);
          }
        },
      );
    }

    storyDuration = const Duration(seconds: 5);

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: CachedNetworkImage(
        imageUrl: url,
        fit: BoxFit.contain,
      ),
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
              context.read<HomeBloc>().add(LoadStories());
              homeRepository.setStorySeen(id: widget.stories[index].id);

              currentOuterIndex = index;
              if (index < currentOuterIndex) {
                currentInnerIndex = widget.storiesData[index].length - 1;
              } else {
                currentInnerIndex = 0;
              }
              _innerPageController =
                  PageController(initialPage: currentInnerIndex);
              progress = 0.0;
              pausedProgress = 0.0;
              isPaused = false;
              _isAnimating = false; // Reset animation state
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

                // Check if we're in the middle of an animation
                bool isCurrentlyAnimating = value.abs() > 0.01;

                // Update animation state if it changed
                if (isCurrentlyAnimating != _isAnimating) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    setState(() {
                      _isAnimating = isCurrentlyAnimating;
                      if (_isAnimating) {
                        // Store current progress when animation starts
                        if (!isPaused) {
                          pausedProgress = progress;
                        }
                        _timer?.cancel();
                      } else {
                        // Resume progress when animation ends
                        if (!isPaused) {
                          _startProgress();
                        }
                      }
                    });
                  });
                }

                final Matrix4 transform = Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateY(pi / 3 * value);

                return Transform(
                  alignment: Alignment.center,
                  transform: transform,
                  child: Stack(
                    children: [
                      const SizedBox(height: 12),
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onLongPressStart: (_) {
                          setState(() {
                            _isLongPressing = true;
                            if (!isPaused) {
                              _pauseStory();
                            }
                          });
                        },
                        onLongPressEnd: (_) {
                          setState(() {
                            _isLongPressing = false;
                            if (isPaused && !_isAnimating) {
                              _resumeStory();
                            }
                          });
                        },
                        onTapUp: (details) {
                          if (_isLongPressing || _isAnimating) return;
                          final width = MediaQuery.of(context).size.width;
                          final tapPosition = details.globalPosition.dx;
                          final third = width / 3;

                          if (tapPosition < third) {
                            // Left third: Previous story
                            _goToPreviousStory();
                          } else if (tapPosition > 2 * third) {
                            // Right third: Next story
                            _goToNextStory();
                          } else {
                            // Middle third: Toggle pause/resume
                            if (isPaused) {
                              _resumeStory();
                            } else {
                              _pauseStory();
                            }
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
                            horizontal: 8.0, vertical: 75),
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