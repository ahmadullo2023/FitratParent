import 'package:bloc/bloc.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc() : super(EditProfileState()) {
    on<EditProfile>((event, emit) {
      emit(state.copyWith(status: EditProfileStatus.loading));
      
    });
  }
}
