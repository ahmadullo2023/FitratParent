part of 'theme_bloc.dart';

abstract class ThemeEvent {}

class LoadTheme extends ThemeEvent {
  final String subjectId;

  LoadTheme(this.subjectId);
}
// class LoadThemeTest extends ThemeEvent {
//   final String levelId;
//   final String courseId;
//
//   LoadThemeTest(this.levelId, this.courseId);
// }
//
// class InitializeTheme extends ThemeEvent {}
