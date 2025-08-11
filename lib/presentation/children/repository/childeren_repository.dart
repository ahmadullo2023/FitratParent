// import 'dart:async';
// import 'package:dio/dio.dart';
// import 'package:logger/logger.dart';
// import '../../../utils/request_helper.dart';
// import '../../home/model/student_model.dart';
//
// class ChildrenRepository {
//
//   Future<LearningResponse> getLearning() async {
//     try {
//       final response =
//       await requestHelper.getWithAuth("/appsettings/learning/", log: true);
//       return LearningResponse.fromJson(response);
//     } catch (e, s) {
//       Logger().e(["ERROR", e, s]);
//       rethrow;
//     }
//   }
//
// }
//
// final childrenRepository = ChildrenRepository();
//
// // homework_type