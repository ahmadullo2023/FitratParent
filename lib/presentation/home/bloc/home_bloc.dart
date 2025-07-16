import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/story/story_model.dart';
import '../model/student_model.dart';
import '../repository/home_repository.dart';


part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {



    on<LoadStories>((event, emit) async {
      emit(state.copyWith(status: StoriesStatus.loading));
      try {
        final result = await homeRepository.getStories();
        emit(state.copyWith(
            status: StoriesStatus.success,
            storiesModel: result
        ));
      } on DioException catch (e) {
        emit(state.copyWith(status: StoriesStatus.error));
      } catch (e) {
        emit(state.copyWith(status: StoriesStatus.error));
      }
    });

    on<LoadCourses>((event, emit) async {
      emit(state.copyWith(coursesStatus: CoursesStatus.loading));
      try {
        final result = await homeRepository.getStudents();
        emit(state.copyWith(
            coursesStatus: CoursesStatus.success,
            students: result
        ));
      } on DioException catch (e) {
        emit(state.copyWith(coursesStatus: CoursesStatus.error));
      } catch (e) {
        emit(state.copyWith(coursesStatus: CoursesStatus.error));
      }
    });

    on<LoadLearnings>((event, emit) async {
      emit(state.copyWith(learningStatus: LearningStatus.loading));
      try {
        final result = await homeRepository.getLearning();
        emit(state.copyWith(
            learningStatus: LearningStatus.success,
          learningResponse: result
        ));
      } on DioException catch (e) {
        emit(state.copyWith(learningStatus: LearningStatus.error));
      } catch (e) {
        emit(state.copyWith(learningStatus: LearningStatus.error));
      }
    });

  }
}

enum StudentStatus { loading, success, error }
enum CoursesStatus { loading, success, error }