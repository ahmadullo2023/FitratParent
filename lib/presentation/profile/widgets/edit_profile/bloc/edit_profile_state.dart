part of 'edit_profile_bloc.dart';

enum PutStatus { initial, loading, success, error }

class EditProfileState {
  final PutStatus status;
  final String? uploadError;
  final bool isUploadingPhoto;
  final String? currentPhotoId;
  final String? currentPhotoFile;

  const EditProfileState({
    this.status = PutStatus.initial,
    this.uploadError,
    this.isUploadingPhoto = false,
    this.currentPhotoId,
    this.currentPhotoFile,
  });

  EditProfileState copyWith({
    PutStatus? status,
    String? uploadError,
    bool? isUploadingPhoto,
    String? currentPhotoId,
    String? currentPhotoFile,
  }) {
    return EditProfileState(
      status: status ?? this.status,
      uploadError: uploadError ?? this.uploadError,
      isUploadingPhoto: isUploadingPhoto ?? this.isUploadingPhoto,
      currentPhotoId: currentPhotoId ?? this.currentPhotoId,
      currentPhotoFile: currentPhotoFile ?? this.currentPhotoFile,
    );
  }
}