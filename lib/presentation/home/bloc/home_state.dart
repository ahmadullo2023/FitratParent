part of 'home_bloc.dart';

class HomeState {
  final StoriesStatus status;
  final CoursesStatus coursesStatus;
  final List<StoryModel>? storiesModel;
  // final List<StudentModel>? students;
  final LearningStatus? learningStatus;
  final LearningResponse? learningResponse;

  HomeState({
    this.status = StoriesStatus.loading,
    this.coursesStatus = CoursesStatus.loading,
    this.storiesModel,
    this.learningResponse,
    this.learningStatus,
    // this.students,
  });

  HomeState copyWith({
    StoriesStatus? status,
    LearningStatus? learningStatus,
    LearningResponse? learningResponse,
    CoursesStatus? coursesStatus,
    List<StoryModel>? storiesModel,
    List<StudentModel>? students,
  }) {
    return HomeState(
      status: status ?? this.status,
      coursesStatus: coursesStatus ?? this.coursesStatus,
      learningStatus: learningStatus ?? this.learningStatus,
      learningResponse: learningResponse ?? this.learningResponse,
      storiesModel: storiesModel ?? this.storiesModel,
      // students: students ?? this.students,
    );
  }
}


enum StoriesStatus { success, loading, error }

enum LearningStatus { success, loading, error }

