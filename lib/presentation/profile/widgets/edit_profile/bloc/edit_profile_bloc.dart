import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import '../../../../home/repository/home_repository.dart';
import '../repository/edit_profile_repository.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc() : super(EditProfileState()) {

    on<EditData>((event, emit) async {
      emit(state.copyWith(status: PutStatus.loading));
      try {
        await editProfileRepository.editProfile(
            firstName: event.name,
            lastName: event.lastName,
            phone: event.phone,
            imageUrl: event.photo);
        emit(state.copyWith(
            status: PutStatus.success));
      } on DioException catch (e) {
        emit(state.copyWith(
          status: PutStatus.error,
        ));
      } catch (e) {
        emit(state.copyWith(
          status: PutStatus.error,
        ));
      }
    });

    on<SetPhotoId>((event, emit) {
      emit(state.copyWith(currentPhotoId: event.photoId));
    });

    on<UploadPhoto>((event, emit) async {
      emit(state.copyWith(isUploadingPhoto: true));
      try {
        final photo = await homeRepository.uploadFile(event.filePath, event.fileName);
        emit(state.copyWith(
          currentPhotoId: photo.id,
          currentPhotoFile: photo.file,
          isUploadingPhoto: false,
        ));
      } catch (e) {
        emit(state.copyWith(
          isUploadingPhoto: false,
          uploadError: e.toString(),
        ));
      }
    });

    on<DeletePhoto>((event, emit) {
      emit(state.copyWith(currentPhotoId: null));
    });

  }
}