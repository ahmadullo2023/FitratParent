part of 'themes_bloc.dart';

class ThemesState {
  final PaginationModel<HomeworkModel>? themes;
  final StudentModel? onOffType;
  final PaginationModel<HomeworkModel>? homeworks;
  final ThemesStatus status;

  ThemesState({
    this.themes,
    this.homeworks,
    this.onOffType,
    this.status = ThemesStatus.loading,
  });

  ThemesState copyWith({
    PaginationModel<HomeworkModel>? themes,
    PaginationModel<HomeworkModel>? homeworks,
    StudentModel? onOffType,
    ThemesStatus? status,
  }) {
    return ThemesState(
      themes: themes ?? this.themes,
      status: status ?? this.status,
      onOffType: onOffType ?? this.onOffType,
      homeworks: homeworks ?? this.homeworks,
    );
  }
}

enum ThemesStatus { success, loading, error }

