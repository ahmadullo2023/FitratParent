import 'package:fitrat_parent2/presentation/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../data/db/cache.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/widgets/connectivity_wrapper_widget.dart';
import '../comments/pages/comments_page.dart';
import '../courses/courses.dart';
import '../home/home_screen.dart';
import '../home/model/student_model.dart';
import '../home/widgets/item_courses.dart';
import '../payments/pages/themes_screen.dart';

class ChildernPage extends StatefulWidget {
  const ChildernPage({super.key});

  @override
  State<ChildernPage> createState() => _ChildernPageState();
}

class _ChildernPageState extends State<ChildernPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            title: Text(
              "Farzandlarim",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
            actions: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CommentsPage(
                                lidId: null,
                                studentId:
                                    cache.getString("studentIddddddd"))));
                  },
                  child: SvgPicture.asset("assets/icons/SupportIcon.svg")),
              SizedBox(width: 10),
            ],
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Farzandlarim",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 20),
                  _buildChildCard(
                    name: state.learningResponse?.first.fullName?.toString() ??
                        "",
                    subjects: "Matematika, Ingliz tili",
                    balance:
                        state.learningResponse?.first.balance?.toString() ??
                            "0",
                    progress: state.learningResponse?.first.overallLearning
                            ?.toInt() ??
                        0,
                    avatar: Icons.person,
                    balanceColor: Colors.green,
                  ),
                  const SizedBox(height: 28),
                  const Text(
                    "Kurslar",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  const SizedBox(height: 16),
                  ItemCourses(
                      onClick: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConnectivityWrapper(
                              child: ThemesScreen(
                                courseId:
                                    // "c1cacd4b-428e-4a7e-89a8-5974af999cbc",
                                    state.students?.first.group?.courseId ?? "",
                                levelId:
                                    state.students?.first.group?.levelId ?? "",
                                title: state.students?.first.group?.course ??
                                    state
                                        .students?.first.group?.subject?.name ??
                                    "Matematika,",
                              ),
                            ),
                          ),
                        );
                      },
                      color: Color(0xFF35B26A),
                      subject: "Matematika",
                      imageUrl:
                          //state.learningResponse!.first.photo,
                          state.students?.first.group?.subject?.image?.file,
                      // ??
                      // defaultImage,
                      name: state.learningResponse?.first.fullName.toString() ??
                          "",
                      percentage:
                          state.learningResponse?.first.overallLearning! ?? 0),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        );
      },
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
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade300,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
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
              // const Icon(Icons.arrow_forward_ios,
              //     size: 16, color: Color(0xFF35B26A))
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
                        color: AppColors.emerald500,
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
          Container(
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
                              "Ingiliz tili",
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

  String defaultImage =
      "https://api.ft.sector-soft.ru/media/files/photo_2025-08-19_09-52-40.jpg";
}
