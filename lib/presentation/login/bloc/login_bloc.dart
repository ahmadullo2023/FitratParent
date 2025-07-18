import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import '../model/login_model.dart';
import '../repository/login_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState(status: LoginStatus.success)) {
    on<LoginUser>((event, emit) async {
      emit(state.copyWith(status: LoginStatus.loading));

      try {
        final result = await authRepository.login(
          phoneNumber: event.phone,
          password: event.password,
        );
        emit(state.copyWith(
          status: LoginStatus.success,
          model: result,
        ));
      } on DioException catch (e) {
        emit(state.copyWith(
          status: LoginStatus.error,
          errorMessage: e.message,
        ));
      } catch (e) {
        // Bu yerda role != Parents bo'lgan xatoni tutamiz
        emit(state.copyWith(
          status: LoginStatus.error,
          errorMessage: e.toString(),
        ));
      }
    });
  }
}
