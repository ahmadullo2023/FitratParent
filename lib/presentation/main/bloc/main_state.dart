part of 'main_bloc.dart';
//
// class MainState {
//   final int tabIndex;
//   final int count;
//   final ProfileModel? studentModel;
//   final StudentStatus status;
//
//   MainState({
//     this.tabIndex = 0,
//     this.count = 0,
//     this.studentModel,
//     this.status = StudentStatus.loading,
//   });
//
//   MainState copyWith({
//     int? tabIndex,
//     int? count,
//     ProfileModel? studentModel,
//     StudentStatus? status,
//   }) {
//     return MainState(
//       tabIndex: tabIndex ?? this.tabIndex,
//       count: count ?? this.count,
//       studentModel: studentModel ?? this.studentModel,
//       status: status ?? this.status,
//     );
//   }
// }



class MainState {
  final int tabIndex;
  final int count;
  final ProfileModel? studentModel;
  final MeModel? meModel;
  final StudentStatus status;

  MainState({
    this.tabIndex = 0,
    this.count = 0,
    this.studentModel,
    this.meModel,
    this.status = StudentStatus.loading,
  });

  MainState copyWith({
    int? tabIndex,
    int? count,
    ProfileModel? studentModel,
    MeModel? meModel,
    StudentStatus? status,
  }) {
    return MainState(
      tabIndex: tabIndex ?? this.tabIndex,
      count: count ?? this.count,
      studentModel: studentModel ?? this.studentModel,
      meModel: meModel ?? this.meModel,
      status: status ?? this.status,
    );
  }
}