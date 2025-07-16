import 'package:fitrat_parent2/presentation/payments/pages/payment_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/theme.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../home/home_screen.dart';
import '../../profile/profile_screen.dart';
import '../bloc/main_bloc.dart';

class HolderScreen extends StatefulWidget {
  const HolderScreen({super.key});

  @override
  State<HolderScreen> createState() => _HolderScreenState();
}

class _HolderScreenState extends State<HolderScreen> {

  DateTime? lastBackPress;
  int currentIndex = 0;
  int basketItemCount = 0;
  final List<Widget> pages = [];

  // @override
  // void initState() {
  //   super.initState();
  //   pages.addAll([
  //     BlocProvider(
  //       create: (_) => StudentBloc()..add(GetStudent(HiveHelper.getPhone() ?? "")),
  //       child: const HomeScreen(),
  //     ),
  //     const CoursesScreen(),
  //     const CalendarScreen(),
  //     const MarketScreen(),
  //     const ProfileScreen(),
  //   ]);
  // }


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MainBloc>().add(LoadStudent());
    });
  }

  List<Widget> buildPages() => const [
    HomeScreen(),
    PaymentsPage(),
    ProfileScreen(),
  ];


  void updateBasketCount(int count) {
    setState(() {
      basketItemCount = count;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            final bloc = context.read<MainBloc>();

            if (bloc.state.tabIndex != 0) {
              bloc.add(ChangeTab(0));
              return false;
            }

            final now = DateTime.now();
            if (lastBackPress == null || now.difference(lastBackPress!) > Duration(seconds: 2)) {
              lastBackPress = now;
              Fluttertoast.showToast(msg: "Chiqish uchun yana bir marta bosing");
              return false;
            }
            return true;
          },
          child: Scaffold(
            // body: pages[state.tabIndex],
            // body: IndexedStack(
            //   index: state.tabIndex,
            //   children: pages,
            // ),
            body: IndexedStack(
              index: state.tabIndex,
              children: buildPages(),
            ),

            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              currentIndex: state.tabIndex,
              onTap: (int index) {
                // setState(() {
                //   currentIndex = index;
                // });
                context.read<MainBloc>().add(ChangeTab(index));
              },
              showUnselectedLabels: true,
              // backgroundColor: Colors.white,
              elevation: 10,
              selectedItemColor: AppColors.primaryColor,
              unselectedItemColor: AppColors.grayNormal,
              selectedLabelStyle: const TextStyle(color: AppColors.primaryColor),
              unselectedLabelStyle: TextStyle(color: AppColors.grayNormal),
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                    decoration: state.tabIndex == 0
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: AppColors.primaryColorOpacity,
                          )
                        : null,
                    child: SvgPicture.asset(
                      AppIcons.home,
                      height: 24,
                      width: 24,
                      colorFilter: state.tabIndex == 0
                          ? ColorFilter.mode(
                              AppColors.primaryColor,
                              BlendMode.srcIn,
                            )
                          : null,
                    ),
                  ),
                  label: "Asosiy",
                ),

                BottomNavigationBarItem(
                  icon: Container(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                    decoration: state.tabIndex == 1
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: AppColors.primaryColorOpacity,
                          )
                        : null,
                    child: SvgPicture.asset(
                      AppIcons.paymentScreenIcon,
                      height: 24,
                      width: 24,
                      colorFilter: state.tabIndex == 1
                          ? ColorFilter.mode(
                              AppColors.primaryColor,
                              BlendMode.srcIn,
                            )
                          : null,
                    ),
                  ),
                  label: "To'lovlar",
                ),


                BottomNavigationBarItem(
                  icon: Container(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                    decoration: state.tabIndex == 2
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: AppColors.primaryColorOpacity,
                          )
                        : null,
                    child: SvgPicture.asset(
                      AppIcons.pupils,
                      height: 24,
                      width: 24,
                      colorFilter: state.tabIndex == 2
                          ? ColorFilter.mode(
                              AppColors.primaryColor,
                              BlendMode.srcIn,
                            )
                          : null,
                    ),
                  ),
                  label: "Profile",
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
