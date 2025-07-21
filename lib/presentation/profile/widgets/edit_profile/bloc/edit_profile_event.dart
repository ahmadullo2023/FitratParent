part of 'edit_profile_bloc.dart';

abstract class EditProfileEvent {}

class SetPhotoId extends EditProfileEvent {
  final String? photoId;
  final String? photoFile;

  SetPhotoId(this.photoId, {this.photoFile});
}

class SetPhotoData extends EditProfileEvent {
  final String? photoId;
  final String? photoFile;

  SetPhotoData({this.photoId, this.photoFile});
}

class UploadPhoto extends EditProfileEvent {
  final String filePath;
  final String fileName;

  UploadPhoto({required this.filePath, required this.fileName});
}

class DeletePhoto extends EditProfileEvent {}

class EditData extends EditProfileEvent {
  final String name;
  final String lastName;
  final String phone;
  final String? photo;

  EditData({
    required this.name,
    required this.lastName,
    required this.phone,
    this.photo,
  });
}