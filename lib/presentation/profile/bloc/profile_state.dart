part of 'profile_bloc.dart';

class ProfileState {
  final ProfileStatus status;
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
  final MeModel? getMe;

  ProfileState(
      {this.status = ProfileStatus.loading,
      this.id = '',
      this.full_name = '',
      this.first_name = '',
      this.last_name = '',
      this.role = '',
      this.salary = 0,
      this.password = 0,
      this.pages = const [],
      this.files = const [],
      this.is_archived = false,
      this.filial = const [],
      this.bonus = const [],
      this.compensation = const [],
      this.getMe});

  ProfileState copyWith(
      {ProfileStatus? status,
      String? id,
      String? full_name,
      String? first_name,
      String? last_name,
      String? role,
      double? salary,
      int? password,
      List? pages,
      List? files,
      bool? is_archived,
      List? filial,
      List? bonus,
      List? compensation,
        MeModel? getMe}) {
    return ProfileState(
      status: status ?? this.status,
      id: id ?? this.id,
      full_name: full_name ?? this.full_name,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      role: role ?? this.role,
      salary: salary ?? this.salary,
      password: password ?? this.password,
      pages: pages ?? this.pages,
      files: files ?? this.files,
      is_archived: is_archived ?? this.is_archived,
      filial: filial ?? this.filial,
      bonus: bonus ?? this.bonus,
      compensation: compensation ?? this.compensation,
      getMe: getMe ?? this.getMe,
    );
  }
}

enum ProfileStatus { success, loading, error }

enum LearningStatus { success, loading, error }
