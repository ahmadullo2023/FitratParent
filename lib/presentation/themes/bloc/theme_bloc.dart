import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../models/theme_model.dart';
import '../repository/themes_repository.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {

  ThemeBloc() : super(ThemeState()) {
    on<LoadTheme>(_onLoadTheme);
  }

  Future<void> _onLoadTheme(LoadTheme event, Emitter<ThemeState> emit) async {
    emit(state.copyWith(themeStatus: SingleThemeStatus.loading));

    try {
      final result = await themesRepository.getRecourses(subjectId: event.subjectId);
      final homeworks = await themesRepository.getHomework(themeId: event.subjectId);

      emit(state.copyWith(
        themeStatus: SingleThemeStatus.success,
        themes: result,
        homeworks: homeworks,
      ));
    } on DioException catch (e) {
      emit(state.copyWith(themeStatus: SingleThemeStatus.error));
    } catch (e) {
      emit(state.copyWith(themeStatus: SingleThemeStatus.error));
    }
  }

  // Future<void> _onLoadThemeTest(LoadThemeTest event, Emitter<ThemeState> emit) async {
  //   emit(state.copyWith(themeStatus: SingleThemeStatus.loading));
  //
  //   try {
  //     final homeworksTest = await themesRepository.getHomeworks(
  //       courseId: event.courseId,
  //       levelId: event.levelId,
  //     );
  //
  //     emit(state.copyWith(
  //       themeStatus: SingleThemeStatus.success,
  //       homeworksTest: homeworksTest,
  //     ));
  //   } on DioException catch (e) {
  //     emit(state.copyWith(themeStatus: SingleThemeStatus.error));
  //   } catch (e) {
  //     emit(state.copyWith(themeStatus: SingleThemeStatus.error));
  //   }
  // }

  // Future<PaginationModel<HomeworkModel>> getHomeworksForPagination(
  //     int page, {
  //       required String courseId,
  //       required String levelId,
  //     }) async {
  //   try {
  //     final result = await themesRepository.getHomeworks(
  //       courseId: courseId,
  //       page: page,
  //       levelId: levelId,
  //     );
  //     return result;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}