import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

import '../app_colors.dart';

class LandscapePlayerPage extends StatefulWidget {
  const LandscapePlayerPage({super.key, required this.controller});

  final VideoPlayerController controller;

  @override
  State<LandscapePlayerPage> createState() => _LandscapePlayerPageState();
}

class _LandscapePlayerPageState extends State<LandscapePlayerPage> {
  bool _showOverlay = true;

  // Store original orientations and system UI mode
  List<DeviceOrientation>? _originalOrientations;
  SystemUiMode? _originalSystemUiMode;

  Future _landscapeMode() async {
    // Store current orientations before changing
    _originalOrientations = DeviceOrientation.values;

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  Future _restoreOriginalSettings() async {
    // Restore original orientations
    await SystemChrome.setPreferredOrientations(_originalOrientations ?? DeviceOrientation.values);

    // Restore system UI to normal mode with all overlays
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values, // This restores status bar and navigation bar
    );
  }

  @override
  void initState() {
    super.initState();
    _landscapeMode();
    widget.controller.addListener(() {
      if (mounted) setState(() {});
    });
    widget.controller.play();
  }

  @override
  void dispose() {
    _restoreOriginalSettings();
    widget.controller.pause();
    super.dispose();
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return "${duration.inHours > 0 ? '${twoDigits(duration.inHours)}:' : ''}$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    final controller = widget.controller;

    return Scaffold(
        backgroundColor: Colors.black,
        body: GestureDetector(
            onTap: () {
              setState(() {
                _showOverlay = !_showOverlay;
              });
            },
            child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: AspectRatio(
                      aspectRatio: controller.value.aspectRatio,
                      child: VideoPlayer(controller),
                    ),
                  ),

                  if (_showOverlay)
                    IconButton(
                      iconSize: 64,
                      icon: Icon(
                        controller.value.isPlaying ? Icons.pause_circle : Icons.play_circle,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          controller.value.isPlaying ? controller.pause() : controller.play();
                        });
                      },
                    ),

                  if (_showOverlay) // Add this condition to hide controls when overlay is hidden
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              VideoProgressIndicator(
                                controller,
                                allowScrubbing: true,
                                colors: VideoProgressColors(
                                  playedColor: AppColors.emerald500,
                                  // bufferedColor: Colors.grey.withOpacity(0.5),
                                  // backgroundColor: Colors.grey.withOpacity(0.3),
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Row(
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              controller.value.isPlaying ? controller.pause() : controller.play();
                                            });
                                          },
                                        ),
                                        Text(
                                          _formatDuration(controller.value.position),
                                          style: const TextStyle(color: Colors.white),
                                        ),
                                        const Spacer(),
                                        Text(
                                          _formatDuration(controller.value.duration),
                                          style: const TextStyle(color: Colors.white),
                                        ),
                                        IconButton(
                                            icon: const Icon(Icons.screen_rotation, color: Colors.white),
                                            onPressed: () async {
                                              await _restoreOriginalSettings();
                                              if (!mounted) return;
                                              Navigator.of(context).pop();
                                            }
                                        )
                                      ]
                                  )
                              ),
                              const SizedBox(height: 8),
                            ]
                        )
                    )
                ]
            )
        )
    );
  }
}