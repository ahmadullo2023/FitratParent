part of 'main_bloc.dart';

class MainState {
  final int tabIndex;
  final int count;
  final ProfileModel? studentModel;
  final StudentStatus status;

  MainState({
    this.tabIndex = 0,
    this.count = 0,
    this.studentModel,
    this.status = StudentStatus.loading,
  });

  MainState copyWith({
    int? tabIndex,
    int? count,
    ProfileModel? studentModel,
    StudentStatus? status,
  }) {
    return MainState(
      tabIndex: tabIndex ?? this.tabIndex,
      count: count ?? this.count,
      studentModel: studentModel ?? this.studentModel,
      status: status ?? this.status,
    );
  }
}
