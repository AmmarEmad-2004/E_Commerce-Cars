import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  double totalPrice = 54000;
  int count = 1;
  void increment(double price) {
    count++;
    totalPrice += price;
    emit(CounterSuccess(totalPrice: totalPrice, count: count));
  }

  void decrement(double price) {
    if (count <= 1) return;
    count--;
    totalPrice -= price;
    emit(CounterSuccess(totalPrice: totalPrice, count: count));
  }

  double getTotalPrice() {
    return totalPrice;
  }
}
