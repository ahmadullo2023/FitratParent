part of 'profile_bloc.dart';

@immutable
sealed class ProfileEvent {}

class UpdateEvent extends ProfileEvent {
  final String id;
  final String full_name;
  final String first_name;
  final String last_name;
  final String role;
  final double salary;
  final int password;
  final List pages;
  final List files;
  final bool is_archived;
  final List filial;
  final List bonus;
  final List compensation;

  UpdateEvent(
      {required this.id,
      required this.full_name,
      required this.first_name,
      required this.last_name,
      required this.role,
      required this.salary,
      required this.password,
      required this.pages,
      required this.files,
      required this.is_archived,
      required this.filial,
      required this.bonus,
      required this.compensation});
}

class GetMeEvent extends ProfileEvent {}
