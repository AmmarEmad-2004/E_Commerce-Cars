import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff1e2128),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

      child: child,
    );
  }
}
