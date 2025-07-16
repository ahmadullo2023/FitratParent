import 'package:fitrat_parent2/presentation/profile/widgets/dialogs.dart';
import 'package:fitrat_parent2/presentation/profile/widgets/item_certificate.dart';
import 'package:fitrat_parent2/presentation/profile/widgets/item_direction.dart';
import 'package:fitrat_parent2/presentation/profile/widgets/item_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../data/db/cache.dart';
import '../../data/hive/hive_helper.dart';
import '../../utils/app_assets.dart';
import '../../utils/theme.dart';
import '../balance/balance_screen.dart';
import '../edit_profile/edit_profile_screen.dart';
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
    return Scaffold(
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
                    isDestructive: true
                );
              },
              child: Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.only(right: 14),
                decoration: BoxDecoration(
                  color: const Color(0xFFF9FAFB),
                  border:
                      Border.all(color: const Color(0xFFF3F4F6), width: 1.5),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(AppIcons.logout),
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
                              child: (student?.photo?.url?.isNotEmpty ?? false)
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
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: ItemResult(
                          svgAsset: AppIcons.coin,
                          count: '50',
                          label: 'Tangalar',
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ItemResult(
                          svgAsset: AppIcons.star,
                          count: "${student?.ball?.toInt() ?? 0}",
                          label: 'Point',
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ItemResult(
                          svgAsset: AppIcons.lightning,
                          count: "${student?.strike ?? 0}",
                          label: 'Strik',
                        ),
                      ),
                    ],
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BalanceScreen()));
                      },
                      child: ItemDirections(
                        imageUrl: AppIcons.wallet,
                        title: 'Balans',
                        description: 'To’ldirish, to’lovlar tarixi',
                      ),
                    ),
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
                SizedBox(
                  height: 16,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        "Sertifikatlar",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 10),
                      itemBuilder: (context, index) {
                        return ItemCertification(
                          name: "Flutter Bootcamp",
                          status: "Jarayonda",
                          percentage: (15 * index + 14).toDouble(),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ))));
  }
}
