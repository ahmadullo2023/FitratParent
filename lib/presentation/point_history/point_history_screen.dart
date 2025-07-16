import 'package:fitrat_parent2/presentation/point_history/repository/points_repository.dart';
import 'package:flutter/material.dart';
import '../../utils/app_assets.dart';
import '../../utils/custom_pagination_widget.dart';
import '../../utils/formatters.dart';
import 'model/points_model.dart';
import 'widget/ball_item.dart';

class PointHistoryScreen extends StatefulWidget {
  const PointHistoryScreen({super.key, required this.studentId});

  final String studentId;

  @override
  State<PointHistoryScreen> createState() => _PointHistoryScreenState();
}

class _PointHistoryScreenState extends State<PointHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text(
          "Ballar tarixi",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xffF3F4F6),
        child: Expanded(
                  child: CustomPaginationWidget<PointsModel>(
        // controller: _pagingController,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        itemBuilder: (item) {
          return BallItem(
            reason: item.comment ?? "No Comment",
            date: Formatter.dateFormatter(item.createdAt),
            pointText: item.coin ?? "0",
            svgAsset: AppIcons.star,
          );
        },
        getItems: (page) async {
          try {
            final result = await pointsRepository.getPointsHistory(
              page: page,
              studentId: widget.studentId,
            );
            return result;
          } catch (e) {
            rethrow;
          }
        },
                  ),
                ),
      ),
    );
  }
}
