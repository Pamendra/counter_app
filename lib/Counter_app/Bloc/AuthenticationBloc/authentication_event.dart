import 'package:equatable/equatable.dart';

class AuthenticationEvent extends Equatable{
  @override
  List<Object?> get props => [];
}

class LoginEvent extends AuthenticationEvent{
  final String username;
  final String pass;

  LoginEvent(this.username, this.pass);

  @override
  List<Object?> get props => [username,pass];
}