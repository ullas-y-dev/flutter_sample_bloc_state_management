import 'package:flutter_application/pages/welcome/welcome_bloc/welcome_events.dart';
import 'package:flutter_application/pages/welcome/welcome_bloc/welcome_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(WelcomeState()) {
    on<WelcomeEvent>((event, emit) {
      emit(WelcomeState(page: state.page));

    });
  }
}