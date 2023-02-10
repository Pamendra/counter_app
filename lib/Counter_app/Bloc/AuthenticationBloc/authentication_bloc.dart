import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../Presentation/Pages/login_page.dart';
import 'authentication_event.dart';
import 'authentication_state.dart';

class Authentication extends Bloc<AuthenticationEvent,AuthenticationState> {
  Authentication() : super(AuthenticationInitialState()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthenticationLoadingState());


    });
  }
}


