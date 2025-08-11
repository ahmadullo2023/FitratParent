part of 'themes_bloc.dart';


abstract class ThemesEvent {}

class LoadThemes extends ThemesEvent{
  final String levelId;
  final String courseId;
  final int page;
  LoadThemes (this.levelId, this.courseId, this.page);
}

class InitializeThemes extends ThemesEvent {}

class InitializeType extends ThemesEvent {

  final String courseId;

  InitializeType (this.courseId);
}

