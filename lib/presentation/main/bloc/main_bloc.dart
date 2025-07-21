import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import '../../../data/hive/hive_helper.dart';
import '../../comments/models/me_model.dart';
import '../../home/bloc/home_bloc.dart';
import '../../home/repository/home_repository.dart';
import '../../profile/model/profile_model.dart';

part 'main_event.dart';
part 'main_state.dart';


class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState()) {
    on<BadgeCount>((event, emit) {
      emit(state.copyWith(count: event.count));
    });
    on<ChangeTab>((event, emit) async {
      final result = await homeRepository.getStudent(id: HiveHelper.getUserId());
      emit(state.copyWith(tabIndex: event.index, studentModel: result ));
    });

    on<LoadStudent>((event, emit) async {
      emit(state.copyWith(status: StudentStatus.loading));
      try {
        final result = await homeRepository.getStudent(id: HiveHelper.getUserId());
        emit(state.copyWith(
          status: StudentStatus.success,
          studentModel: result,
        ));
      } on DioException catch (_) {
        emit(state.copyWith(status: StudentStatus.error));
      }
    });

    on<LoadMe>((event, emit) async {
      emit(state.copyWith(status: StudentStatus.loading));
      try {
        final result = await homeRepository.getMe();
        emit(state.copyWith(
          status: StudentStatus.success,
          meModel: result,
        ));
      } on DioException catch (_) {
        emit(state.copyWith(status: StudentStatus.error));
      }
    });

  }
}