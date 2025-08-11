import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';
import '../../../data/db/cache.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/widgets/custom_donwload_button_widget.dart';
import '../../../utils/widgets/loading_widget.dart';
import '../../../utils/widgets/video_landscape_screen.dart';
import '../../widgets/custom_button.dart';
import '../bloc/theme_bloc.dart';
import '../repository/themes_repository.dart';
import '../widgets/item_theme.dart';

class ThemeDetailScreen extends StatefulWidget {
  const ThemeDetailScreen(
      {super.key,
      required this.subjectId,
      required this.levelId,
      required this.courseId,
      required this.isOnline,
      required this.homeworkId});

  final String subjectId;
  final String homeworkId;
  final String? levelId;
  final String courseId;
  final bool isOnline;

  @override
  State<ThemeDetailScreen> createState() => _ThemeDetailScreenState();
}

class _ThemeDetailScreenState extends State<ThemeDetailScreen>
    with SingleTickerProviderStateMixin {
  final bloc = ThemeBloc();
  bool _isLoading = false;
  late TabController _tabController;
  bool testChecked = false;

  Map<String, VideoPlayerController> _videoControllers = {};
  Map<String, bool> _videoInitialized = {};
  Map<String, bool> _videoLoading = {};
  Map<String, String> _videoErrors = {};

  @override
  void initState() {
    bloc.add(LoadTheme(widget.subjectId));
    _tabController = TabController(
      length: 2,
      vsync: this,
      animationDuration: const Duration(milliseconds: 200),
    );
    super.initState();
  }

  void getHomework() async {
    final a =
        await themesRepository.getHomeworkData(homeworkId: widget.homeworkId);
    print("++++++++");
    print("$a");
    print("++++++++");

    testChecked = a.testChecked ?? false;
  }

  @override
  void dispose() {
    for (var controller in _videoControllers.values) {
      try {
        controller.pause();
        controller.dispose();
      } catch (e) {
        print('Error disposing video controller: $e');
      }
    }
    _videoControllers.clear();
    _videoInitialized.clear();
    _videoLoading.clear();
    _videoErrors.clear();

    bloc.close();
    _tabController.dispose();
    super.dispose();
  }

  void _initializeVideoController(String videoUrl, String videoId) {
    if (_videoControllers.containsKey(videoId)) return;

    String secureVideoUrl = videoUrl;
    if (videoUrl.startsWith('http://')) {
      secureVideoUrl = videoUrl.replaceFirst('http://', 'https://');
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          _videoLoading[videoId] = true;
          _videoErrors.remove(videoId);
        });

        try {
          final controller = VideoPlayerController.networkUrl(
            Uri.parse(secureVideoUrl),
            videoPlayerOptions: VideoPlayerOptions(
              mixWithOthers: true,
              allowBackgroundPlayback: false,
            ),
          );

          controller.addListener(() {
            if (mounted) {
              setState(() {});
            }
          });

          _videoControllers[videoId] = controller;

          controller.initialize().then((_) {
            if (mounted) {
              setState(() {
                _videoInitialized[videoId] = true;
                _videoLoading[videoId] = false;
              });

              controller.pause();
            }
          }).catchError((error) {
            if (mounted) {
              setState(() {
                _videoLoading[videoId] = false;
                _videoErrors[videoId] = 'Failed to load video';
              });
            }
            print('Video initialization error: $error');
          });
        } catch (e) {
          if (mounted) {
            setState(() {
              _videoLoading[videoId] = false;
              _videoErrors[videoId] = 'Video initialization failed';
            });
          }
          print('Video controller creation error: $e');
        }
      }
    });
  }

  Widget _buildVideoPlayer(String videoUrl, String videoId) {
    String secureVideoUrl = videoUrl;
    if (videoUrl.startsWith('http://')) {
      secureVideoUrl = videoUrl.replaceFirst('http://', 'https://');
    }

    if (secureVideoUrl.isEmpty ||
        !(secureVideoUrl.toLowerCase().endsWith('.mp4') ||
            secureVideoUrl.toLowerCase().endsWith('.mov') ||
            secureVideoUrl.toLowerCase().endsWith('.avi') ||
            secureVideoUrl.toLowerCase().endsWith('.mkv'))) {
      return Container(
        height: 218,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Center(
          child: Text('Invalid video format'),
        ),
      );
    }

    if (_videoLoading[videoId] == true) {
      return Container(
        height: 218,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Center(
          child: CupertinoActivityIndicator(),
        ),
      );
    }

    if (_videoErrors.containsKey(videoId)) {
      return Container(
        height: 218,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                size: 48,
                color: Colors.grey,
              ),
              SizedBox(height: 8),
              Text(
                _videoErrors[videoId] ?? 'Video unavailable',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  _videoControllers.remove(videoId)?.dispose();
                  _videoInitialized.remove(videoId);
                  _videoLoading.remove(videoId);
                  _videoErrors.remove(videoId);
                  _initializeVideoController(secureVideoUrl, videoId);
                },
                child: Text('Retry'),
              ),
            ],
          ),
        ),
      );
    }

    if (!_videoControllers.containsKey(videoId) &&
        !(_videoLoading[videoId] ?? false)) {
      _initializeVideoController(secureVideoUrl, videoId);
      return Container(
        height: 218,
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

    if (_videoInitialized[videoId] != true ||
        !_videoControllers.containsKey(videoId)) {
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

    final controller = _videoControllers[videoId]!;

    return Container(
      height: 218,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          color: Colors.black,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Builder(
                builder: (context) {
                  try {
                    // return VideoPlayer(controller);
                    return AspectRatio(
                      aspectRatio: controller.value.aspectRatio > 0
                          ? controller.value.aspectRatio
                          : 16 / 9,
                      child: VideoPlayer(controller),
                    );
                  } catch (e) {
                    print('Video rendering error: $e');
                    return Container(
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          'Video rendering error',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  }
                },
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LandscapePlayerPage(
                                    controller: controller)));
                      },
                      icon: Icon(
                        Icons.fullscreen,
                        size: 32,
                        color: AppColors.white,
                      ))),
              GestureDetector(
                onTap: () {
                  try {
                    setState(() {
                      if (controller.value.isPlaying) {
                        controller.pause();
                      } else {
                        controller.play();
                      }
                    });
                  } catch (e) {
                    print('Video control error: $e');
                  }
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
              // Progress indicator
              Positioned(
                bottom: 8,
                left: 8,
                right: 8,
                child: Builder(
                  builder: (context) {
                    try {
                      return VideoProgressIndicator(
                        controller,
                        allowScrubbing: true,
                        colors: VideoProgressColors(
                          playedColor: AppColors.emerald500,
                          // bufferedColor: Colors.grey.withOpacity(0.5),
                          // backgroundColor: Colors.grey.withOpacity(0.3),
                        ),
                      );
                    } catch (e) {
                      return Container();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    getHomework();
    return BlocProvider.value(
      value: bloc,
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: AppColors.white,
          centerTitle: true,
          title: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () {},
                child: Text(
                  "${state.themeStatus == SingleThemeStatus.success ? state.themes!.title : "Navigation"}",
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Outfit",
                    color: AppColors.black,
                  ),
                ),
              );
            },
          ),
        ),
        body: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            switch (state.themeStatus) {
              case SingleThemeStatus.success:
                return Container(
                  color: AppColors.white,
                  child: SafeArea(
                    child: Column(
                      children: [
                        Container(
                          color: AppColors.white,
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              child: TabBar(
                                overlayColor: WidgetStateColor.transparent,
                                controller: _tabController,
                                padding: const EdgeInsets.all(4),
                                indicatorColor: Colors.transparent,
                                indicatorSize: TabBarIndicatorSize.tab,
                                dividerHeight: 0,
                                labelPadding: EdgeInsets.zero,
                                tabs: List.generate(2, (index) {
                                  return AnimatedBuilder(
                                    animation: _tabController.animation!,
                                    builder: (context, _) {
                                      final animationValue =
                                          _tabController.animation!.value;

                                      double selectionProgress;
                                      if (index == 0) {
                                        selectionProgress = 1.0 -
                                            animationValue.clamp(0.0, 1.0);
                                      } else {
                                        selectionProgress =
                                            animationValue.clamp(0.0, 1.0);
                                      }

                                      final backgroundColor = Color.lerp(
                                        Colors.white,
                                        AppColors.emerald500,
                                        selectionProgress,
                                      )!;

                                      final borderColor = Color.lerp(
                                        const Color(0xffF3F4F6),
                                        AppColors.emerald600,
                                        selectionProgress,
                                      )!;

                                      final textColor = Color.lerp(
                                        const Color(0xff9DA4AE),
                                        Colors.white,
                                        selectionProgress,
                                      )!;

                                      return Container(
                                        margin: EdgeInsets.only(
                                          right: index == 0 ? 8 : 0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: backgroundColor,
                                          border: Border(
                                            top: BorderSide(
                                                color: borderColor, width: 1.5),
                                            left: BorderSide(
                                                color: borderColor, width: 1.5),
                                            right: BorderSide(
                                                color: borderColor, width: 1.5),
                                            bottom: BorderSide(
                                                color: borderColor, width: 3),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 20),
                                        child: Text(
                                          index == 0
                                              ? "Mavzular"
                                              : "Uyga vazifalar",
                                          style: TextStyle(
                                            color: textColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                }),
                              )),
                        ),
                        Expanded(
                            child: TabBarView(
                                controller: _tabController,
                                children: [
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 12, left: 16, right: 16),
                                      child: Text(
                                        removeEscapeCharacters(
                                            state.themes!.description ?? ""),
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontFamily: "Outfit",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 16, left: 16),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Manbalar",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Outfit",
                                            color: AppColors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    ...?state.themes!.files?.map((doc) {
                                      final index =
                                          state.themes!.files?.indexOf(doc);
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8),
                                        child: CustomDownloadButtonWidget(
                                          fileUrl: doc.file ?? "",
                                          name: doc.file ?? "",
                                          index: index ?? 0,
                                        ),
                                      );
                                    }),
                                    ...List.generate(
                                      state.themes!.videos?.length ?? 0,
                                      (index) {
                                        final file =
                                            state.themes!.videos?[index];
                                        if (file?.url != null) {
                                          return Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16.0,
                                                      vertical: 8),
                                              child: ItemTheme(
                                                title: 'Youtube Video',
                                                svgAssetPath: AppIcons.icVideo,
                                                subtitle: 'Youtube',
                                                onTab: () {
                                                  // Navigator.push(
                                                  //     context,
                                                  //     MaterialPageRoute(
                                                  //         builder: (context) =>
                                                  //             YoutubePlayerScreen(
                                                  //                 youtubeUrl:
                                                  //                     file?.url ??
                                                  //                         "")));
                                                },
                                              ));
                                        } else if (file?.file != null) {
                                          final videoUrl = file!.file!;
                                          final videoId = "theme_video_$index";

                                          if (videoUrl
                                                  .toLowerCase()
                                                  .endsWith('.mp4') ||
                                              videoUrl
                                                  .toLowerCase()
                                                  .endsWith('.mov') ||
                                              videoUrl
                                                  .toLowerCase()
                                                  .endsWith('.avi') ||
                                              videoUrl
                                                  .toLowerCase()
                                                  .endsWith('.mkv')) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16.0,
                                                      vertical: 4),
                                              child: _buildVideoPlayer(
                                                  videoUrl, videoId),
                                              // child: FutureBuilder<Widget>(
                                              //   future: _buildVideo(videoUrl, videoId, index),
                                              //   builder: (context, snapshot) {
                                              //     if (snapshot.connectionState == ConnectionState.waiting) {
                                              //       return const Center(child: CircularProgressIndicator());
                                              //     } else if (snapshot.hasError) {
                                              //       return const Center(child: Text("Error loading video"));
                                              //     } else {
                                              //       return snapshot.data!;
                                              //     }
                                              //   },
                                              // ),
                                            );
                                          } else {
                                            return CustomDownloadButtonWidget(
                                              fileUrl: videoUrl,
                                              index: index,
                                              name: videoUrl,
                                            );
                                          }
                                        }
                                        return SizedBox.shrink();
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  // Scrollable content
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 12, left: 16, right: 16),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                removeEscapeCharacters(
                                                    state.homeworks?[0].body ??
                                                        ""),
                                                style: TextStyle(
                                                  color: AppColors.black,
                                                  fontFamily: "Outfit",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 16.0, left: 16),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Homework",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Outfit",
                                                  color: AppColors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          // Homework documents
                                          ...?state.homeworks?[0].documents
                                              ?.map((doc) {
                                            final index = state
                                                .homeworks![0].documents
                                                ?.indexOf(doc);
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8),
                                              child: CustomDownloadButtonWidget(
                                                fileUrl: doc.file ?? "",
                                                name: doc.file ?? "",
                                                index: index ?? 0,
                                              ),
                                            );
                                          }),
                                          // Homework videos
                                          ...List.generate(
                                            state.homeworks?[0].video?.length ??
                                                0,
                                            (index) {
                                              final file = state
                                                  .homeworks![0].video?[index];
                                              if (file?.url != null) {
                                                return Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 8.0,
                                                      vertical: 8),
                                                  child: ItemTheme(
                                                    title: 'Youtube Video',
                                                    svgAssetPath:
                                                        AppIcons.icVideo,
                                                    subtitle: 'Youtube',
                                                    onTab: () {
                                                      // Navigator.push(
                                                      //   context,
                                                      //   MaterialPageRoute(
                                                      //     builder: (context) =>
                                                      //         YoutubePlayerScreen(
                                                      //             youtubeUrl:
                                                      //                 file?.url ??
                                                      //                     ""),
                                                      //   ),
                                                      // );
                                                    },
                                                  ),
                                                );
                                              } else if (file?.file != null) {
                                                final videoUrl = file!.file!;
                                                final videoId =
                                                    "homework_video_$index";

                                                if (videoUrl
                                                        .toLowerCase()
                                                        .endsWith('.mp4') ||
                                                    videoUrl
                                                        .toLowerCase()
                                                        .endsWith('.mov') ||
                                                    videoUrl
                                                        .toLowerCase()
                                                        .endsWith('.avi') ||
                                                    videoUrl
                                                        .toLowerCase()
                                                        .endsWith('.mkv')) {
                                                  return Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 16.0),
                                                    child: _buildVideoPlayer(
                                                        videoUrl, videoId),
                                                  );
                                                } else {
                                                  return CustomDownloadButtonWidget(
                                                    fileUrl: videoUrl,
                                                    index: index,
                                                    name: videoUrl,
                                                  );
                                                }
                                              }
                                              return SizedBox.shrink();
                                            },
                                          ),
                                          // Homework photos
                                          ...?state.homeworks?[0].photo
                                              ?.map((doc) {
                                            final index = state
                                                .homeworks![0].photo
                                                ?.indexOf(doc);
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8),
                                              child: CustomDownloadButtonWidget(
                                                name: doc.file ?? "",
                                                fileUrl: doc.file ?? "",
                                                index: index ?? 0,
                                              ),
                                            );
                                          }),
                                        ],
                                      ),
                                    ),
                                  ),
                                  if (cache.getString("homework_type") !=
                                      "Offline") ...[
                                    // Padding(
                                    //     padding: const EdgeInsets.only(
                                    //         bottom: 16, left: 16, right: 16),
                                    //     child: SafeArea(
                                    //       child: CustomButton(
                                    //         text: testChecked
                                    //             ? "Natijani ko'rish"
                                    //             : "Testni boshlash",
                                    //         onPressed: _isLoading
                                    //             ? null
                                    //             : () async {
                                    //                 setState(() {
                                    //                   _isLoading = true;
                                    //                 });
                                    //
                                    //                 try {
                                    //                   if (!testChecked) {
                                    //                     Navigator.push(
                                    //                         context,
                                    //                         MaterialPageRoute(
                                    //                             builder: (context) => TestScreen(
                                    //                                 homeworkId: state
                                    //                                     .homeworks![
                                    //                                         0]
                                    //                                     .id!,
                                    //                                 themeId: state
                                    //                                     .themes!
                                    //                                     .id!)));
                                    //                     return;
                                    //                   } else {
                                    //
                                    //
                                    //                     var quizzesResponse = await testRepository.getQuizzes(
                                    //                       homeworkId: state.homeworks![0].id!,
                                    //                     );
                                    //
                                    //                     final quizzes = quizzesResponse is List
                                    //                         ? quizzesResponse
                                    //                         : (quizzesResponse != null ? [quizzesResponse] : []);
                                    //
                                    //                     if (quizzes.isEmpty) {
                                    //                       print("Quizzes bo‘sh qaytdi");
                                    //                       return;
                                    //                     }
                                    //
                                    //                     var testResultResponse = await themesRepository.getTestResult(
                                    //                       quizId: quizzes[0].id!,
                                    //                     );
                                    //
                                    //                     final testResults = testResultResponse is List
                                    //                         ? testResultResponse
                                    //                         : (testResultResponse != null ? [testResultResponse] : []);
                                    //
                                    //                     if (testResults.isNotEmpty &&
                                    //                         testResults[0].jsonBody != null &&
                                    //                         testResults[0].jsonBody!.isNotEmpty) {
                                    //
                                    //                       final firstResult = testResults[0].jsonBody!.first; // xavfsiz
                                    //
                                    //                       // Navigator.push(
                                    //                       //   context,
                                    //                       //   MaterialPageRoute(
                                    //                       //     builder: (context) => ResultAllTestScreen(
                                    //                       //       correctAnswers: firstResult.summary?.correctCount ?? 0,
                                    //                       //       ball: firstResult.summary?.ball ?? 0,
                                    //                       //       wrongAnswers: firstResult.summary?.wrongCount ?? 0,
                                    //                       //       totalAnswers: firstResult.summary?.totalQuestions ?? 0,
                                    //                       //       objectiveTest: firstResult.details?.objectiveTest ?? [],
                                    //                       //       clozeTest: firstResult.details?.clozeTest ?? [],
                                    //                       //       trueFalse: firstResult.details?.trueFalse ?? [],
                                    //                       //       matchPair: firstResult.details?.matchPair ?? [],
                                    //                       //       standard: firstResult.details?.standard ?? [],
                                    //                       //     ),
                                    //                       //   ),
                                    //                       // );
                                    //                     } else {
                                    //                       print(
                                    //                         "No valid data received from API: ${testResults.isNotEmpty ? testResults.first : 'empty'}",
                                    //                       );
                                    //                     }
                                    //
                                    //
                                    //
                                    //
                                    //                     // var quizzesResponse = await testRepository.getQuizzes(
                                    //                     //   homeworkId: state.homeworks![0].id!,
                                    //                     // );
                                    //                     //
                                    //                     // final quizzes = quizzesResponse is List
                                    //                     //     ? quizzesResponse
                                    //                     //     : (quizzesResponse != null ? [quizzesResponse] : []);
                                    //                     //
                                    //                     // if (quizzes.isEmpty) {
                                    //                     //   print("Quizzes bo‘sh qaytdi");
                                    //                     //   return;
                                    //                     // }
                                    //                     //
                                    //                     // var testResultResponse = await themesRepository.getTestResult(
                                    //                     //   quizId: quizzes[0].id!,
                                    //                     // );
                                    //                     //
                                    //                     // final testResults = testResultResponse is List
                                    //                     //     ? testResultResponse
                                    //                     //     : (testResultResponse != null ? [testResultResponse] : []);
                                    //                     //
                                    //                     // if (testResults.isNotEmpty && testResults[0].jsonBody != null) {
                                    //                     //   final jsonBody = testResults[0].jsonBody!;
                                    //                     //
                                    //                     //   Navigator.push(
                                    //                     //     context,
                                    //                     //     MaterialPageRoute(
                                    //                     //       builder: (context) => ResultAllTestScreen(
                                    //                     //         correctAnswers: jsonBody[0].summary?.correctCount ?? 0,
                                    //                     //         ball: jsonBody[0].summary?.ball ?? 0,
                                    //                     //         wrongAnswers: jsonBody[0].summary?.wrongCount ?? 0,
                                    //                     //         totalAnswers: jsonBody[0].summary?.totalQuestions ?? 0,
                                    //                     //         objectiveTest: jsonBody[0].details?.objectiveTest ?? [],
                                    //                     //         clozeTest: jsonBody[0].details?.clozeTest ?? [],
                                    //                     //         trueFalse: jsonBody[0].details?.trueFalse ?? [],
                                    //                     //         matchPair: jsonBody[0].details?.matchPair ?? [],
                                    //                     //         standard: jsonBody[0].details?.standard ?? [],
                                    //                     //       ),
                                    //                     //     ),
                                    //                     //   );
                                    //                     // } else {
                                    //                     //   print("No valid data received from API: ${testResults.isNotEmpty ? testResults.first : 'empty'}");
                                    //                     // }
                                    //
                                    //
                                    //
                                    //                     // var aa = await testRepository
                                    //                     //     .getQuizzes(
                                    //                     //         homeworkId: state
                                    //                     //             .homeworks![
                                    //                     //                 0]
                                    //                     //             .id!);
                                    //                     // var a =
                                    //                     //     await themesRepository
                                    //                     //         .getTestResult(
                                    //                     //             quizId: aa[
                                    //                     //                     0]
                                    //                     //                 .id!);
                                    //                     //
                                    //                     // if (a.isNotEmpty &&
                                    //                     //     a[0].jsonBody !=
                                    //                     //         null) {
                                    //                     //   final jsonBody =
                                    //                     //       a[0].jsonBody!;
                                    //                     //
                                    //                     //   Navigator.push(
                                    //                     //       context,
                                    //                     //       MaterialPageRoute(
                                    //                     //           builder: (context) => ResultAllTestScreen(
                                    //                     //               correctAnswers:
                                    //                     //                   jsonBody[0].summary?.correctCount ??
                                    //                     //                       0,
                                    //                     //               ball:
                                    //                     //                   jsonBody[0].summary?.ball ??
                                    //                     //                       0,
                                    //                     //               wrongAnswers:
                                    //                     //                   jsonBody[0].summary?.wrongCount ??
                                    //                     //                       0,
                                    //                     //               totalAnswers:
                                    //                     //                   jsonBody[0].summary?.totalQuestions ??
                                    //                     //                       0,
                                    //                     //               objectiveTest:
                                    //                     //                   jsonBody[0].details?.objectiveTest ??
                                    //                     //                       [],
                                    //                     //               clozeTest:
                                    //                     //                   jsonBody[0].details?.clozeTest ??
                                    //                     //                       [],
                                    //                     //               trueFalse:
                                    //                     //                   jsonBody[0].details?.trueFalse ??
                                    //                     //                       [],
                                    //                     //               matchPair:
                                    //                     //                   jsonBody[0].details?.matchPair ??
                                    //                     //                       [],
                                    //                     //               standard: jsonBody[0].details?.standard ?? [])));
                                    //                     // } else {
                                    //                     //   print(
                                    //                     //       'No valid data received from API ${a.first}');
                                    //                     // }
                                    //                   }
                                    //                 } catch (e) {
                                    //                   // Handle any errors
                                    //                   print('Error: $e');
                                    //                 } finally {
                                    //                   // Reset loading state
                                    //                   if (mounted) {
                                    //                     setState(() {
                                    //                       _isLoading = false;
                                    //                     });
                                    //                   }
                                    //                 }
                                    //               },
                                    //         fontFamily: "Outfit",
                                    //         child: _isLoading
                                    //             ? SizedBox(
                                    //                 width: 20,
                                    //                 height: 20,
                                    //                 child:
                                    //                     CircularProgressIndicator(
                                    //                   strokeWidth: 2,
                                    //                   valueColor:
                                    //                       AlwaysStoppedAnimation<
                                    //                               Color>(
                                    //                           Colors.white),
                                    //                 ),
                                    //               )
                                    //             : null,
                                    //       ),
                                    //     ))
                                  ]
                                ],
                              ),
                            ]))
                      ],
                    ),
                  ),
                );
              case SingleThemeStatus.loading:
                return Container(
                    color: AppColors.white,
                    height: double.infinity,
                    width: double.infinity,
                    child: Center(child: LoadingWidget()));
              case SingleThemeStatus.error:
                return Container(
                    color: AppColors.white,
                    height: double.infinity,
                    width: double.infinity,
                    child: Center(child: SvgPicture.asset(AppIcons.empty)));
            }
          },
        ),
      ),
    );
  }

  // Future<Widget> _buildVideo(String videoUrl, String id, int index) async {
  //   if (Platform.isAndroid) {
  //     try {
  //       final int sdkInt = await platform.invokeMethod('getSdkInt');
  //       if (sdkInt < 31) {
  //         return CustomDownloadButtonWidget(
  //           fileUrl: videoUrl,
  //           index: index,
  //           name: videoUrl,
  //         );
  //       }
  //     } catch (e) {
  //       return const Center(child: Text("Failed to detect Android version"));
  //     }
  //   }
  //   return _buildVideoPlayer(videoUrl, id);
  // }

  String removeEscapeCharacters(String input) {
    return input.replaceAll(RegExp(r'[\n\t\r]'), '');
  }
}
