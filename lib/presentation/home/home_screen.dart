import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitrat_parent2/presentation/home/repository/home_repository.dart';
import 'package:fitrat_parent2/presentation/home/widgets/item_courses.dart';
import 'package:fitrat_parent2/presentation/home/widgets/item_story.dart';
import 'package:fitrat_parent2/presentation/profile/bloc/profile_bloc.dart';
import 'package:fitrat_parent2/utils/number_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/servise/file_download_service.dart';
import '../../utils/widgets/item_event.dart';
import '../../utils/widgets/item_results.dart';
import '../children/childern_page.dart';
import '../events/event_detail.dart';
import '../events/events_screen.dart';
import '../events/model/events_model.dart';
import '../events/repository/events_repository.dart';
import '../main/bloc/main_bloc.dart';
import '../notification/repository/notification_repository.dart';
import '../results/model/results_model.dart';
import '../results/repository/results_repository.dart';
import '../results/results_screen.dart';
import '../story/story_screen.dart';
import '../widgets/custom_app_bar.dart';
import 'bloc/home_bloc.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ResultsModel> results = [];
  List<EventsModel> events = [];

  @override
  void initState() {
    super.initState();
    context.read<MainBloc>().add(LoadStudent());
    context.read<ProfileBloc>().add(GetMeEvent());
    context.read<HomeBloc>().add(LoadStories());
    context.read<HomeBloc>().add(LoadLearnings());
    notificationRepository.getNotifications(page: 1);
    getResults();
    getEvents();
  }

  void getResults() async {
    results = await resultsRepository.getResultsNoPg();
  }

  void getEvents() async {
    events = await eventsRepository.getEventsNoPg();
  }

  @override
  Widget build(BuildContext context) {
    final student = context.watch<MainBloc>().state.studentModel;
    final student2 = context.watch<MainBloc>().state.meModel;

    return BlocBuilder<MainBloc, MainState>(builder: (context, mainState) {
      return BlocBuilder<ProfileBloc, ProfileState>(
        builder: (proContext, proState) {
          return Scaffold(
              appBar: CustomAppBar(
                title: proState.getMe?.fullName ?? '',
                points: mainState.status == StudentStatus.loading
                    ? 0
                    : student?.ball?.toDouble() ?? 0,
                isLoading: mainState.status == StudentStatus.loading,
                userImage: student2?.photo?.file,
              ),
              body: Container(
                  height: double.infinity,
                  color: AppColors.white,
                  child: RefreshIndicator(
                      color: Colors.green,
                      backgroundColor: Colors.white,
                      displacement: 40,
                      strokeWidth: 3,
                      onRefresh: () async {
                        context.read<MainBloc>().add(LoadStudent());
                        context.read<HomeBloc>().add(LoadStories());
                        context.read<ProfileBloc>().add(GetMeEvent());
                        context.read<HomeBloc>().add(LoadLearnings());
                        notificationRepository.getNotifications(page: 1);
                        getResults();
                        getEvents();
                      },
                      child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: BlocBuilder<HomeBloc, HomeState>(
                            builder: (homeContext1, homeState1) {
                              studentId2 = homeState1
                                      .learningResponse?.first.studentId ??
                                  "";
                              return Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 8),
                                        BlocBuilder<HomeBloc, HomeState>(
                                          buildWhen: (previous, current) =>
                                              previous.status !=
                                                  current.status ||
                                              previous.storiesModel !=
                                                  current.storiesModel,
                                          builder: (context, homeState2) {
                                            if (homeState2.status ==
                                                StoriesStatus.loading) {
                                              return ItemCoursesShimmer();
                                              //_buildStoriesShimmer();
                                            } else if (homeState2.status ==
                                                StoriesStatus.error) {
                                              return const SizedBox(
                                                height: 80,
                                                child: Center(
                                                    child: Text(
                                                        "Xatolik yuz berdi")),
                                              );
                                            }

                                            final stories =
                                                homeState2.storiesModel;
                                            return stories != null &&
                                                    stories.isNotEmpty
                                                ? _buildStoriesSection(stories)
                                                : const SizedBox();
                                          },
                                        ),
                                        const SizedBox(height: 12),
                                        12.vertical,
                                        if (events.isNotEmpty) ...[
                                          Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16.0),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Tadbirlar",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff0D121C),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 18,
                                                          fontFamily:
                                                              "outfitMedium"),
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          EventsScreen()));
                                                        },
                                                        child: Text("Barchasi",
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .emerald500,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 14,
                                                            )))
                                                  ])),
                                          12.vertical,
                                          CarouselSlider(
                                            options: CarouselOptions(
                                              autoPlay: true,
                                              height: 126,
                                              viewportFraction: 0.8,
                                              enlargeCenterPage: true,
                                              enlargeStrategy:
                                                  CenterPageEnlargeStrategy
                                                      .height,
                                              enableInfiniteScroll: true,
                                              padEnds: true,
                                              initialPage: 0,
                                              autoPlayAnimationDuration:
                                                  Duration(milliseconds: 600),
                                              autoPlayCurve: Curves.easeInOut,
                                            ),
                                            items: List.generate(events.length,
                                                (index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 6),
                                                child: ItemEvents(
                                                  backgroundImage:
                                                      events[index].photo?.file,
                                                  title:
                                                      events[index].comment ??
                                                          "No comment yet",
                                                  time: events[index].endDate ??
                                                      "",
                                                  onTab: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            EventDetail(
                                                                event: events[
                                                                    index]),
                                                      ),
                                                    );
                                                  },
                                                  isEvent: true,
                                                ),
                                              );
                                            }),
                                          ),
                                          const SizedBox(height: 12),
                                        ],
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12),
                                          child: _buildSectionTitle(
                                              'Farzandlarim'),
                                        ),
                                        const SizedBox(height: 12),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ChildernPage()));
                                            },
                                            child: _buildChildCard(
                                              name: homeState1.learningResponse
                                                      ?.first.fullName
                                                      ?.toString() ??
                                                  "",
                                              subjects: "Kimyo noldan",
                                              balance: homeState1
                                                      .learningResponse
                                                      ?.first
                                                      .balance
                                                      ?.toString() ??
                                                  "0",
                                              progress: homeState1
                                                      .learningResponse
                                                      ?.first
                                                      .overallLearning
                                                      ?.toInt() ??
                                                  0,
                                              avatar: Icons.person,
                                              balanceColor: Colors.green,
                                            ),
                                          ),
                                        ),
                                        if (results.isNotEmpty) ...[
                                          Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16.0,
                                                      vertical: 10),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Faxrli o’quvchilarimiz",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff0D121C),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 18,
                                                          fontFamily:
                                                              "outfitMedium"),
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        ResultsScreen(),
                                                              ));
                                                        },
                                                        child: Text("Barchasi",
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .emerald500,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 14,
                                                            )))
                                                  ])),
                                          12.vertical,
                                          SizedBox(
                                            height: 242,
                                            child: ListView.separated(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16),
                                              scrollDirection: Axis.horizontal,
                                              itemCount: results.length,
                                              separatorBuilder:
                                                  (context, index) =>
                                                      const SizedBox(width: 12),
                                              itemBuilder: (context, index) {
                                                return ItemResults(
                                                  teacherName:
                                                      results[index].teacher ??
                                                          "",
                                                  isBig: false,
                                                  topImageUrl:
                                                      results[index].file?.file,
                                                  studentImageUrl:
                                                      results[index]
                                                          .studentPhoto
                                                          ?.file,
                                                  studentName:
                                                      results[index].fullName ??
                                                          "Ann",
                                                  resultType: results[index]
                                                          .fkName
                                                          ?.name ??
                                                      "",
                                                  score: results[index].point ??
                                                      "",
                                                  onTap: () {
                                                    results[index].file?.file != null &&
                                                            (results[index]
                                                                    .file!
                                                                    .file!
                                                                    .endsWith(
                                                                        ".png") ||
                                                                results[index]
                                                                    .file!
                                                                    .file!
                                                                    .endsWith(
                                                                        ".jpg") ||
                                                                results[index]
                                                                    .file!
                                                                    .file!
                                                                    .endsWith(
                                                                        ".jpeg"))
                                                        ? Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (_) =>
                                                                    Scaffold(
                                                                        backgroundColor:
                                                                            Colors
                                                                                .black,
                                                                        appBar:
                                                                            AppBar(
                                                                          backgroundColor:
                                                                              Colors.black,
                                                                          // Black background
                                                                          iconTheme:
                                                                              IconThemeData(color: Colors.white), // White back button
                                                                        ),
                                                                        body: Center(
                                                                            child: InteractiveViewer(
                                                                                child: Image.network(results[index]
                                                                                    .file!
                                                                                    .file!))))))
                                                        : FileDownloadService()
                                                            .downloadAndOpenFile(
                                                            context: context,
                                                            url: results[index]
                                                                .file!
                                                                .file!,
                                                          );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                          const SizedBox(height: 12),
                                        ],
                                      ]));
                            },
                          )))));
        },
      );
    });
  }

  Widget _buildSectionTitle(String title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        title == 'Faxrli o’quvchilarimiz'
            ? SvgPicture.asset("assets/images/Iconex.svg")
            : SizedBox(),
        SizedBox(width: 8),
        Text(title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      ],
    );
  }

  Widget _buildChildCard({
    required String name,
    required String subjects,
    required String balance,
    required int progress,
    required IconData avatar,
    required Color balanceColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFF3F4F6),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipOval(
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade300,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: SvgPicture.asset(
                      AppIcons.person,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16)),
                  Text(subjects, style: const TextStyle(color: Colors.grey)),
                ],
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios,
                  size: 16, color: Color(0xFF35B26A))
            ],
          ),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 72,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: const Border(
                  top: BorderSide(color: Color(0xFFE5E7EB), width: 2),
                  left: BorderSide(color: Color(0xFFE5E7EB), width: 2),
                  right: BorderSide(color: Color(0xFFE5E7EB), width: 2),
                  bottom: BorderSide(color: Color(0xFFE5E7EB), width: 4),
                ),
              ),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: SvgPicture.asset(
                        AppIcons.walletFull,
                        height: 20,
                        width: 20,
                        color: AppColors.emerald500, // Or change as needed
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        formatMoney(balance),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      // const SizedBox(height: 4),
                      Text(
                        "Balans",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6C737F),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 74,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 72,
                    width: 200,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: const Border(
                        top: BorderSide(color: Color(0xFFE5E7EB), width: 2),
                        left: BorderSide(color: Color(0xFFE5E7EB), width: 2),
                        right: BorderSide(color: Color(0xFFE5E7EB), width: 2),
                        bottom: BorderSide(color: Color(0xFFE5E7EB), width: 4),
                      ),
                    ),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: SvgPicture.asset(
                              AppIcons.progress,
                              height: 24,
                              width: 24,
                              color:
                                  AppColors.emerald500, // Or change as needed
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${progress * 1.5}%",
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            // const SizedBox(height: 4),
                            Text(
                              "Matematika",
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF6C737F),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 8),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 72,
                    width: 200,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: const Border(
                        top: BorderSide(color: Color(0xFFE5E7EB), width: 2),
                        left: BorderSide(color: Color(0xFFE5E7EB), width: 2),
                        right: BorderSide(color: Color(0xFFE5E7EB), width: 2),
                        bottom: BorderSide(color: Color(0xFFE5E7EB), width: 4),
                      ),
                    ),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: SvgPicture.asset(
                              AppIcons.progress,
                              height: 24,
                              width: 24,
                              color:
                                  AppColors.emerald500, // Or change as needed
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${progress}%",
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            // const SizedBox(height: 4),
                            Text(
                              "Ingliz tili",
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF6C737F),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildStoriesSection(List<dynamic> stories) {
    return SizedBox(
      height: 68,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          itemCount: stories.length,
          itemBuilder: (context, index) {
            return StoryAvatar(
              imageUrl: stories[index].photo?.file,
              storyText: stories[index].text,
              isRead: stories[index].seen,
              onClick: () {
                context.read<HomeBloc>().add(LoadStories());
                homeRepository.setStorySeen(id: stories[index].id);
                final storiesData = <List<String>>[];
                for (final story in stories) {
                  final storyMediaList = <String>[];
                  if (story.video != null) {
                    for (final photo in story.video!) {
                      if (photo.file != null && photo.file!.isNotEmpty) {
                        storyMediaList.add(photo.file!);
                      }
                    }
                  }

                  if (storyMediaList.isNotEmpty) {
                    storiesData.add(storyMediaList);
                  }
                }

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StoryScreen(
                      stories: stories,
                      storiesData: storiesData,
                      initialStoryIndex: index,
                    ),
                  ),
                );
              },
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 4)),
    );
  }
}

String studentId2 = "92b0b156-a097-46c6-92d9-d92aaeda099b";

String formatMoney(String input) {
  final number = double.tryParse(input);
  if (number == null) return input;

  final formatter = NumberFormat('#,##0.###');
  return formatter.format(number);
}
