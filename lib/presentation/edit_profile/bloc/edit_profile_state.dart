part of 'edit_profile_bloc.dart';

class EditProfileState {
  final EditProfileStatus status;

  EditProfileState({this.status = EditProfileStatus.loading});

  EditProfileState copyWith({EditProfileStatus? status}) {
    return EditProfileState(status: status ?? this.status);
  }
}

enum EditProfileStatus { success, error, loading }
