part of 'theme_bloc.dart';

class ThemeState {
  final SingleThemeStatus themeStatus;
  final ThemeNew? themes;
  final List<HomeworkModel>? homeworks;

  ThemeState({
    this.themeStatus = SingleThemeStatus.loading,
    this.themes,
    this.homeworks,
  });

  ThemeState copyWith({
    SingleThemeStatus? themeStatus,
    ThemeNew? themes,
    List<HomeworkModel>? homeworks,
    HomeworkModel? homework
  }) {
    return ThemeState(
      themeStatus: themeStatus ?? this.themeStatus,
      themes: themes ?? this.themes,
      homeworks: homeworks ?? this.homeworks,
    );
  }
}

enum SingleThemeStatus { success, loading, error }