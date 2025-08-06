import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,

    required this.backgroundColor,
    this.side,
    this.onPressed,
    this.foregroundColor = Colors.white,
    this.radius = 16,
    required this.child,
  });

  final BorderSide? side;
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color? foregroundColor;
  final double radius;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: side,
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
