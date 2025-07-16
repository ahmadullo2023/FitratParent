part of 'edit_profile_bloc.dart';

abstract class EditProfileEvent {}

class EditProfile extends EditProfileEvent {
  final String imageUrl;
  final String firstName;
  final String lastName;
  final String phone;

  EditProfile(this.imageUrl, this.firstName, this.lastName, this.phone);
}
