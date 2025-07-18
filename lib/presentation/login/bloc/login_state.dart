part of 'login_bloc.dart';

class LoginState {
  final LoginStatus? status;
  final LoginModel? model;
  final String? errorMessage;

  LoginState({this.status, this.model, this.errorMessage});

  LoginState copyWith({
    LoginStatus? status,
    LoginModel? model,
    String? errorMessage,
  }) {
    return LoginState(
      status: status ?? this.status,
      model: model ?? this.model,
      errorMessage: errorMessage,
    );
  }
}

enum LoginStatus { success, loading, error }
