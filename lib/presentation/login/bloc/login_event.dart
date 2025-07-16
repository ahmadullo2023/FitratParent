part of 'login_bloc.dart';


abstract class LoginEvent {}

class LoginUser extends LoginEvent {
  final String phone;
  final String password;
  LoginUser (this.phone, this.password);
}