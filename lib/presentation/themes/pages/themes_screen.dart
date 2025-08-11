import 'package:fitrat_parent2/presentation/themes/pages/theme_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/widgets/custom_pagination_widget.dart';
import '../../../utils/widgets/loading_widget.dart';
import '../bloc/themes_bloc.dart';
import '../models/theme_model.dart';
import '../widgets/item_theme.dart';

class ThemesScreen extends StatefulWidget {
  const ThemesScreen(
      {super.key, this.levelId, required this.courseId, required this.title});

  final String? levelId;
  final String courseId;
  final String title;

  @override
  State<ThemesScreen> createState() => _ThemesScreenState();
}

class _ThemesScreenState extends State<ThemesScreen>
    with SingleTickerProviderStateMixin {
  final bloc = ThemesBloc();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
      animationDuration: const Duration(milliseconds: 200),
    );
    bloc.add(InitializeThemes());
    bloc.add(InitializeType(widget.courseId));
  }

  @override
  void dispose() {
    _tabController.dispose();
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: AppColors.white,
          centerTitle: true,
          title: Text(
            widget.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: "Outfit",
              color: AppColors.black,
            ),
          ),
        ),
        body: BlocBuilder<ThemesBloc, ThemesState>(
          builder: (context, state) {
            switch (state.status) {
              case ThemesStatus.success:
                return Container(
                    color: AppColors.white,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CustomPaginationBlocWidget<HomeworkModel>(
                          itemBuilder: (item) {
                            return ItemTheme(
                              withPercentage: true,
                              svgAssetPath: AppIcons.themeBook,
                              title: item.title!,
                              isActive: item.isActive ?? true,
                              subtitle: "${item.theme!.subject!.name}",
                              percentage: item.ball?.ball ?? 0,
                              subjectId: item.theme!.id!,
                              onTab: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ThemeDetailScreen(
                                              subjectId: item.theme!.id!,
                                              levelId: widget.levelId,
                                              courseId: widget.courseId,
                                              // isChecked:
                                              //         item.testChecked ?? false,
                                              isOnline: state.onOffType
                                                      ?.homeworkType ==
                                                  "Online",
                                              homeworkId: item.id ?? "",
                                            )));
                              },
                            );
                          },
                          getItems: (page) => context
                              .read<ThemesBloc>()
                              .getThemesForPagination(page,
                                  courseId: widget.courseId,
                                  levelId: widget.levelId ?? ""),
                        )));
              case ThemesStatus.loading:
                return Center(child: LoadingWidget());
              case ThemesStatus.error:
                return Center(
                  child: Text("Error"),
                );
            }
          },
        ),
      ),
    );
  }
}
