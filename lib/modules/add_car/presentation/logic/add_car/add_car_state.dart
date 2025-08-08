part of 'add_car_cubit.dart';

abstract class AddCarState {}

class AddCarInitial extends AddCarState {}

class AddCarLoading extends AddCarState {}

class AddCarSuccess extends AddCarState {}

class AddCarError extends AddCarState {
  final String message;

  AddCarError(this.message);

  List<Object?> get props => [message];
}
