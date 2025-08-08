part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}
final class CounterSuccess extends CounterState {
  final double totalPrice;
  final int count;

  CounterSuccess({required this.totalPrice, required this.count});
}