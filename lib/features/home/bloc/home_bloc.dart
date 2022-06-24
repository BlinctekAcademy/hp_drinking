import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<MakeChoiceEvent>((event, emit) {
      if (event.choice) {
        emit.call(QuestionCorrect());
      } else {
        emit.call(QuestionWrong());
      }
    });
  }
}
