import 'package:cars_app/core/widgets/custom_elevated_button.dart';
import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/home/presentation/logic/counter_cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FooterButtonsCartScreen extends StatelessWidget {
  const FooterButtonsCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Container(
              decoration: BoxDecoration(
                color: Color(0xFFF47B00),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                child: Text(
                  '\$${state is CounterSuccess ? state.totalPrice : '${54000}'}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            );
          },
        ),
        CustomSize(w: 16),
        Expanded(
          child: CustomElevatedButton(
            backgroundColor: Color(0xFFF47B00),
            radius: 8,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: Text(
                'Buy Now',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
