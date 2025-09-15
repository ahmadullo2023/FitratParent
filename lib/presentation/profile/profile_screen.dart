import 'package:fitrat_parent2/presentation/home/bloc/home_bloc.dart';
import 'package:fitrat_parent2/presentation/profile/widgets/dialogs.dart';
import 'package:fitrat_parent2/presentation/profile/widgets/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:fitrat_parent2/presentation/profile/widgets/edit_profile/edit_profile_screen.dart';
import 'package:fitrat_parent2/presentation/profile/widgets/item_direction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../data/db/cache.dart';
import '../../data/hive/hive_helper.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/theme.dart' hide AppColors;
import '../children/childern_page.dart';
import '../notification/notifications_screen.dart';
import 'bloc/profile_bloc.dart';
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
  void initState() {
    context.read<MainBloc>().add(LoadMe());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final student = context.watch<MainBloc>().state.meModel;
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return BlocBuilder<ProfileBloc, ProfileState>(
          builder: (proContext, ptoState) {
            return Scaffold(
                backgroundColor: Color(0xffF9FAFB),
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: false,
                  title: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Profil",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: AppColors.grayDarker,
                      ),
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
                body: RefreshIndicator(
                  color: Colors.green,
                  backgroundColor: Colors.white,
                  onRefresh: () async {
                    context.read<MainBloc>().add(LoadMe());
                    context.read<ProfileBloc>().add(GetMeEvent());
                  },
                  child: ListView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: GestureDetector(
                          onTap: () async {
                            final shouldReload = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlocProvider(
                                  create: (context) => EditProfileBloc(),
                                  child: const EditProfileScreen(),
                                ),
                              ),
                            );

                            // final shouldReload = await Navigator.push<bool>(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (_) => EditProfileScreen()),
                            // );

                            if (shouldReload == true) {
                              context.read<MainBloc>().add(LoadStudent());
                            }
                          },
                          child: Row(
                            children: [
                              Spacer(),
                              Stack(
                                children: [
                                  ClipOval(
                                    child: SizedBox(
                                      height: 88,
                                      width: 88,
                                      child:
                                          (student?.photo?.file?.isNotEmpty ??
                                                  false)
                                              ? Image.network(
                                                  student!.photo!.file!,
                                                  fit: BoxFit.cover,
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
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            ptoState.getMe?.fullName ?? "",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.read<ProfileBloc>().add(GetMeEvent());
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BlocProvider(
                                    create: (context) => EditProfileBloc(),
                                    child: const EditProfileScreen(),
                                  ),
                                ),
                                // MaterialPageRoute(
                                //     builder: (context) => EditProfileScreen()),
                              );
                            },
                            child: ItemDirections(
                              imageUrl: AppIcons.pupils,
                              title: 'Shaxsiy maʼlumotlar',
                              description: 'Ma’lumotlarni tahrirlash, ko’rish',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          NotificationsScreen()));
                            },
                            child: ItemDirections(
                              imageUrl: AppIcons.notifications,
                              title: 'Eslatmalar',
                              description: 'Eslatmalar, eslatma sozlamalari',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "Farzandlarim",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChildernPage()),
                            );
                          },
                          child: _buildChildCard(
                            name: state.learningResponse?.first.fullName
                                    ?.toString() ??
                                "",
                            subjects: "Matematika, Ingliz tili",
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
                  ),
                ));
          },
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
}
