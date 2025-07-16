import 'package:fitrat_parent2/presentation/children/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';

class ChildernPage extends StatefulWidget {
  const ChildernPage({super.key});

  @override
  State<ChildernPage> createState() => _ChildernPageState();
}

class _ChildernPageState extends State<ChildernPage> {
  @override
  Widget build(BuildContext context) {
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
          "Farzandim",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatPage()));
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
                "Farzandim",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              _buildChildCard(
                name: "James Wilson",
                subjects: "Ingliz tili, Matematika",
                balance: "300,000",
                progress: 88,
                avatar: Icons.person,
                balanceColor: Colors.green,
              ),
              const SizedBox(height: 28),
              const Text(
                "Kurslar",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(height: 16),
              Container(
                height: 72,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: const Border(
                    top: BorderSide(color: Color(0xFFE5E7EB), width: 2),
                    left: BorderSide(color: Color(0xFFE5E7EB), width: 2),
                    right: BorderSide(color: Color(0xFFE5E7EB), width: 2),
                    bottom: BorderSide(color: Color(0xFFE5E7EB), width: 4.5),
                  ),
                ),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColors.blueRibbon100,
                            ),
                          )),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ingliz tili - Intermediate",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Mahmudova Aziza",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6C737F),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    SvgPicture.asset("assets/icons/Progress2.svg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
              CircleAvatar(radius: 24, child: Icon(avatar)),
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
          Row(
            children: [
              Expanded(
                child: GestureDetector(
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
                              "500,000",
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
              ),
              SizedBox(width: 8),
              Expanded(
                child: GestureDetector(
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
                              "88%",
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            // const SizedBox(height: 4),
                            Text(
                              "O'zlashtirish",
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
              ),
            ],
          )
        ],
      ),
    );
  }
}

