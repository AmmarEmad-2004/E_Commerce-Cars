import 'package:flutter/material.dart';

class CartCounter extends StatelessWidget {
  const CartCounter({super.key, this.onDecrementTap, this.onIncrementTap});
  final void Function()? onDecrementTap;
  final void Function()? onIncrementTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      mainAxisSize: MainAxisSize.min,
      children: [
        CounterWidget(onTap: onDecrementTap, icon: Icons.remove),
        Text('1', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        CounterWidget(icon: Icons.add, onTap: onIncrementTap),
      ],
    );
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key, this.onTap, required this.icon});
  final void Function()? onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: ShapeDecoration(
        color: const Color(0xFFF47B00),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        shadows: [
          BoxShadow(
            color: Color(0xFFF47B00).withValues(alpha:  0.2),
            blurRadius: 6,
            offset: Offset(0, 3),
            spreadRadius: 0,
          ),
        ],
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        splashRadius: 18,
        icon: Icon(icon, size: 20),
        onPressed: onTap,
      ),
    );
    // return Container(
    //   width: 28,
    //   height: 28,
    //   decoration: BoxDecoration(
    //     shape: BoxShape.circle,
    //     border: Border.all(color: Colors.grey.shade300, width: 1.5),
    //   ),
    //   child: IconButton(
    //     padding: EdgeInsets.zero,
    //     splashRadius: 18,
    //     icon: Icon(icon, size: 20),
    //     onPressed: onTap,
    //   ),
    // );
  }
}
