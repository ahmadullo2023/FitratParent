part of 'login_bloc.dart';

class LoginState {
  LoginStatus? status;
  LoginModel? model;

  LoginState({this.status, this.model});
  LoginState copyWith({
    LoginStatus? status,
    LoginModel? model
  }) =>
      LoginState(
        status: status ?? this.status,
        model: model ?? this.model
      );
}

enum LoginStatus { success, loading, error }
