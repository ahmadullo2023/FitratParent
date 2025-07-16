part of 'main_bloc.dart';

abstract class MainEvent {}

class BadgeCount extends MainEvent {
  final int count;
  BadgeCount(this.count);
}

class ChangeTab extends MainEvent {
  final int index;
  ChangeTab(this.index);
}

class LoadStudent extends MainEvent {}

