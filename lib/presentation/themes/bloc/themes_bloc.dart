import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../utils/models/pagination_model.dart';
import '../../home/model/student_model.dart';
import '../models/theme_model.dart';
import '../repository/themes_repository.dart';

part 'themes_event.dart';
part 'themes_state.dart';

class ThemesBloc extends Bloc<ThemesEvent, ThemesState> {

  ThemesBloc() : super(ThemesState()) {
    on<LoadThemes>(_onLoadThemes);
    on<InitializeThemes>(_onInitializeThemes);

    on<InitializeType>((event, emit) async {
      emit(state.copyWith(status: ThemesStatus.loading));
      try {
        // final onlineOfflineType = await themesRepository.getTestType(
        //     courseId: event.courseId
        // );
        final onlineOfflineType = StudentModel(homeworkType: "Online");
        emit(state.copyWith(
          status: ThemesStatus.success,
          onOffType: onlineOfflineType,
        ));
      } on DioException catch (e) {
        emit(state.copyWith(status: ThemesStatus.error));
      } catch (e) {
        emit(state.copyWith(status: ThemesStatus.error));
      }
    });
  }

  Future<void> _onLoadThemes(LoadThemes event, Emitter<ThemesState> emit) async {
    emit(state.copyWith(status: ThemesStatus.loading));

    try {
      final result = await themesRepository.getThemesOfLessons(
        courseId: event.courseId,
        page: event.page,
        levelId: event.levelId,
      );

      final onlineOfflineType = await themesRepository.getTestType(
          courseId: event.courseId
      );

      emit(state.copyWith(
        status: ThemesStatus.success,
        onOffType: onlineOfflineType,
        themes: result,
      ));
    } on DioException catch (e) {
      emit(state.copyWith(status: ThemesStatus.error));
    } catch (e) {
      emit(state.copyWith(status: ThemesStatus.error));
    }
  }

  void _onInitializeThemes(InitializeThemes event, Emitter<ThemesState> emit) {
    emit(state.copyWith(status: ThemesStatus.success));
  }

  Future<PaginationModel<HomeworkModel>> getThemesForPagination(
      int page, {
        required String courseId,
        required String levelId,
      }) async {
    try {
      final result = await themesRepository.getThemesOfLessons(
        courseId: courseId,
        page: page,
        levelId: levelId,
      );
      return result;
    } catch (e) {
      rethrow;
    }
  }

  Future<PaginationModel<HomeworkModel>> getHomeworksForPagination(
      int page, {
        required String courseId,
        required String levelId,
      }) async {
    try {
      final result = await themesRepository.getHomeworks(
        courseId: courseId,
        page: page,
        levelId: levelId,
      );
      return result;
    } catch (e) {
      rethrow;
    }
  }
}