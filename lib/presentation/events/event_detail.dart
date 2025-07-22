import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitrat_parent2/presentation/events/model/events_model.dart';
import 'package:fitrat_parent2/utils/number_extension.dart';
import 'package:fitrat_parent2/utils/widgets/video_landscape_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

import '../../utils/app_colors.dart';
import '../../utils/widgets/loading_widget.dart';
import '../widgets/custom_button.dart';

class EventDetail extends StatefulWidget {
  const EventDetail({super.key, required this.event});

  final EventsModel event;

  @override
  State<EventDetail> createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  Map<int, VideoPlayerController> _videoControllers = {};
  Map<int, bool> _videoInitialized = {};
  Map<int, bool> _videoLoading = {};
  Map<int, bool> _videoEnded = {};

  @override
  void initState() {
    super.initState();
    _initializeVideoControllers();
  }

  void _initializeVideoControllers() {
    for (int i = 0; i < (widget.event.file?.length ?? 0); i++) {
      final file = widget.event.file![i];
      if (_isVideoFile(file.file)) {
        _initializeVideoPlayer(i, file.file!);
      }
    }
  }

  bool _isVideoFile(String? filePath) {
    if (filePath == null) return false;
    return filePath.toLowerCase().endsWith("mp4") ||
        filePath.toLowerCase().endsWith("mov");
  }

  bool _isImageFile(String? filePath) {
    if (filePath == null) return false;
    final lowerPath = filePath.toLowerCase();
    return lowerPath.endsWith("png") ||
        lowerPath.endsWith("jpg") ||
        lowerPath.endsWith("jpeg") ||
        lowerPath.endsWith("webp");
  }

  void _initializeVideoPlayer(int index, String videoUrl) {
    String secureVideoUrl = videoUrl;
    if (videoUrl.startsWith('http://')) {
      secureVideoUrl = videoUrl.replaceFirst('http://', 'https://');
    }

    setState(() {
      _videoLoading[index] = true;
      _videoInitialized[index] = false;
      _videoEnded[index] = false;
    });

    final controller = VideoPlayerController.networkUrl(
      Uri.parse(secureVideoUrl),
    );

    _videoControllers[index] = controller;

    controller.initialize().then((_) {
      setState(() {
        _videoInitialized[index] = true;
        _videoLoading[index] = false;
      });

      controller.addListener(() => _onVideoStateChanged(index));
    }).catchError((error) {
      setState(() {
        _videoLoading[index] = false;
      });
      print('Video initialization error for index $index: $error');
    });
  }

  void _onVideoStateChanged(int index) {
    final controller = _videoControllers[index];
    if (controller == null || !controller.value.isInitialized) {
      return;
    }

    final VideoPlayerValue value = controller.value;
    bool hasEnded =
        value.position >= value.duration && value.duration.inMilliseconds > 0;

    if (_videoEnded[index] != hasEnded) {
      setState(() {
        _videoEnded[index] = hasEnded;
      });
    }
  }

  Widget _buildVideoPlayer(int index) {
    if (_videoLoading[index] == true) {
      return Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final controller = _videoControllers[index];
    if (_videoInitialized[index] != true || controller == null) {
      return Container(
        height: 218,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Center(
          child: Icon(
            Icons.error_outline,
            size: 48,
            color: Colors.grey,
          ),
        ),
      );
    }

    return Container(
      height: 218,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: VideoPlayer(controller),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (controller.value.isPlaying) {
                    controller.pause();
                  } else {
                    controller.play();
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(12),
                child: Icon(
                  controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          LandscapePlayerPage(controller: controller),
                    ),
                  );
                },
                icon: Icon(
                  Icons.fullscreen,
                  size: 32,
                  color: AppColors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 8,
              left: 8,
              right: 8,
              child: VideoProgressIndicator(
                controller,
                allowScrubbing: true,
                colors: VideoProgressColors(
                  playedColor: AppColors.emerald500,
                  bufferedColor: Colors.grey.withOpacity(0.5),
                  backgroundColor: Colors.grey.withOpacity(0.3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageWidget(String imageUrl) {
    return SizedBox(
      height: 218,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          imageUrl,
          fit: BoxFit.contain,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(child: LoadingWidget());
          },
          errorBuilder: (context, error, stackTrace) => Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Center(
              child: Icon(
                Icons.error_outline,
                size: 48,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    for (var controller in _videoControllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.white,
        title: Text(
          "Tadbir ma'lumotlari",
          style: TextStyle(
            fontFamily: "outfitMedium",
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                // autoPlay: true,
                height: 200,
                viewportFraction: 0.850,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                enableInfiniteScroll: false,
                padEnds: false,
              ),
              items: List.generate(widget.event.file?.length ?? 0, (index) {
                final file = widget.event.file![index];
                final filePath = file.file;

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: _isVideoFile(filePath)
                      ? _buildVideoPlayer(index)
                      : _isImageFile(filePath)
                          ? _buildImageWidget(filePath!)
                          : Container(
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.insert_drive_file,
                                  size: 48,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                );
              }),
            ),
            12.vertical,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text("Tugash sanasi",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "outfitMedium")),
                  Spacer(),
                  Icon(Icons.calendar_month, color: AppColors.emerald500),
                  4.horizontal,
                  Text(
                      widget.event.endDate == null
                          ? "No date"
                          : formatDate(widget.event.endDate!),
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.emerald500,
                          fontFamily: "outfitMedium"))
                ],
              ),
            ),
            12.vertical,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(widget.event.comment ?? "No title",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        fontFamily: "mediumOutfit")),
              ),
            ),
            12.vertical,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(widget.event.comment ?? "No title",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        fontFamily: "outfitMedium")),
              ),
            ),
            12.vertical,
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomButton(
                    text: widget.event.linkPreview ?? "Qatnashish",
                    onPressed: () async {
                      final url = widget.event.link;
                      if (url != null && url.isNotEmpty) {
                        final uri = Uri.parse(url);
                        if (await canLaunchUrl(uri)) {
                          await launchUrl(uri,
                              mode: LaunchMode.externalApplication);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("URL ochib bo'lmadi")),
                          );
                        }
                      }
                    })),
            12.vertical,
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 16),
            //   child: Align(
            //     alignment: Alignment.centerLeft,
            //     child: Text("Tadbir haqida",
            //         style: TextStyle(
            //             fontWeight: FontWeight.w600,
            //             fontSize: 18,
            //             fontFamily: "mediumOutfit")),
            //   ),
            // ),
            // 12.vertical,
          ],
        ),
      ),
    );
  }

  String formatDate(String inputDate) {
    DateTime date = DateTime.parse(inputDate);
    String day = date.day.toString().padLeft(2, '0');
    String month = date.month.toString().padLeft(2, '0');
    String year = date.year.toString();
    return "$day.$month.$year";
  }
}
