part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class MakeChoiceEvent extends HomeEvent {
  final bool choice;

  MakeChoiceEvent({required this.choice});

  @override
  List<Object> get props => [choice];
}
