import 'package:equatable/equatable.dart';

class AuthenticationState extends Equatable{
  @override
  List<Object?> get props => [];
}

class AuthenticationInitialState extends AuthenticationState{}

class AuthenticationLoadingState extends AuthenticationState{}

class AuthenticationSuccessState extends AuthenticationState {}

class AuthenticationFailedState extends AuthenticationState {
  String message;

  AuthenticationFailedState(this.message);
}





