import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/hive/hive_helper.dart';
import '../../home/model/student_model.dart';
import '../model/me_model.dart';
import '../model/profile_model.dart';
import '../repository/profile_reposiory.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState()) {
    on<UpdateEvent>((event, emit) async {
      print("LoadStudent ===> bloc ishga tushdi");

      emit(state.copyWith(status: ProfileStatus.loading));
      try {
         await profileRepository.authUpdate(
            id: event.id,
            full_name: event.full_name,
            first_name: event.first_name,
            last_name: event.last_name,
            role: event.role,
            salary: event.salary,
            password: event.password,
            pages: event.pages,
            files: event.files,
            is_archived: event.is_archived,
            filial: event.filial,
            bonus: event.bonus,
            compensation: event.compensation);
        emit(state.copyWith(
          status: ProfileStatus.success,
        ));
      } on DioException catch (_) {
        emit(state.copyWith(status: ProfileStatus.error));
      }
    });


    on<GetMeEvent>((event, emit) async {
      print("kfkdkmdfvd");
      emit(state.copyWith(status: ProfileStatus.loading));
      try {
        final result = await profileRepository.getMe(id: HiveHelper.getUserId());
        emit(state.copyWith(status: ProfileStatus.success, getMe: result));
      } on DioException catch (e) {
        emit(state.copyWith(status: ProfileStatus.error));
      } catch (e) {
        emit(state.copyWith(status: ProfileStatus.error));
      }
    });
  }
}
