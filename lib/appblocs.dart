import 'package:flutter_application/appevents.dart';
import 'package:flutter_application/appstates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc extends Bloc<Appevents, Appstates> {
  AppBloc() : super(InitStates()) {
    on<Increment>((event, emit) {
      emit(Appstates(counter: state.counter + 1));
    });

    on<Decrement>((event, emit) {
      emit(Appstates(counter: state.counter - 1));
    });
  }
}
