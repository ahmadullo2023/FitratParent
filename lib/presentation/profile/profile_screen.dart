import 'package:fitrat_parent2/presentation/home/bloc/home_bloc.dart';
import 'package:fitrat_parent2/presentation/profile/widgets/dialogs.dart';
import 'package:fitrat_parent2/presentation/profile/widgets/item_direction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../data/db/cache.dart';
import '../../data/hive/hive_helper.dart';
import '../../utils/app_assets.dart';
import '../../utils/theme.dart';
import '../children/childern_page.dart';
import '../edit_profile/edit_profile_screen.dart';
import '../home/home_screen.dart';
import '../login/pages/login_screen.dart';
import '../main/bloc/main_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final student = context.watch<MainBloc>().state.studentModel;
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
            backgroundColor: Color(0xffF9FAFB),
            appBar: AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              title: Text(
                "Profil",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: AppColors.grayDarker,
                ),
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    showConfirmDialog(
                        context: context,
                        onConfirm: () {
                          cache.clear();
                          HiveHelper.clearAuthBox();
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        title: 'Chiqish',
                        description: 'Profilingizdan chiqmoqchimisiz?',
                        confirmButtonText: 'Chiqish',
                        isDestructive: true);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(right: 14),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9FAFB),
                      border: Border.all(
                          color: const Color(0xFFF3F4F6), width: 1.5),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset("assets/icons/logout.svg"),
                    ),
                  ),
                ),
              ],
            ),
            body: Container(
                height: double.infinity,
                width: double.infinity,
                color: Color(0xffF3F4F6),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: GestureDetector(
                          onTap: () async {
                            final shouldReload = await Navigator.push<bool>(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => EditProfileScreen()),
                            );

                            if (shouldReload == true) {
                              context.read<MainBloc>().add(LoadStudent());
                            }
                          },
                          child: Stack(
                            children: [
                              ClipOval(
                                child: SizedBox(
                                  height: 88,
                                  width: 88,
                                  child: (student?.photo?.url?.isNotEmpty ??
                                          false)
                                      ? SvgPicture.network(
                                          student!.photo!.url!,
                                          fit: BoxFit.cover,
                                          placeholderBuilder: (context) =>
                                              const Center(
                                            child: CupertinoActivityIndicator(),
                                          ),
                                          // Handle error by showing fallback icon
                                          clipBehavior: Clip.none,
                                          height: 88,
                                          width: 88,
                                        )
                                      : SvgPicture.asset(
                                          AppIcons.person,
                                          fit: BoxFit.cover,
                                        ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  padding: const EdgeInsets.all(4),
                                  child: SvgPicture.asset(
                                    AppIcons.icEdit,
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "${student?.firstName} ${student?.lastName}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditProfileScreen()));
                          },
                          child: ItemDirections(
                            imageUrl: AppIcons.pupils,
                            title: 'Shaxsiy maʼlumotlar',
                            description: 'Ma’lumotlarni tahrirlash, ko’rish',
                          ),
                        ),
                        // GestureDetector(
                        //   onTap: () {
                        //     Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //             builder: (context) => BalanceScreen()));
                        //   },
                        //   child: ItemDirections(
                        //     imageUrl: AppIcons.wallet,
                        //     title: 'Balans',
                        //     description: 'To’ldirish, to’lovlar tarixi',
                        //   ),
                        // ),
                        GestureDetector(
                          onTap: () {},
                          child: ItemDirections(
                            imageUrl: AppIcons.notifications,
                            title: 'Eslatmalar',
                            description: 'Eslatmalar, eslatma sozlamalari',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            "Farzandlarim",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                        )),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChildernPage()));
                        },
                        child: _buildChildCard(
                          name: state.learningResponse?.first.fullName
                                  ?.toString() ??
                              "",
                          subjects: "Kimyo noldan",
                          balance: state.learningResponse?.first.balance
                                  ?.toString() ??
                              "0",
                          progress: state
                                  .learningResponse?.first.overallLearning
                                  ?.toInt() ??
                              0,
                          avatar: Icons.person,
                          balanceColor: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ))));
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
        color: Color(0xFFffffff),
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
                              color: AppColors.green,
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
                              color: AppColors.green, // Or change as needed
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
