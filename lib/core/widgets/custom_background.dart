import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key, required this.child, this.onTap});
  final Widget child;
  final Function()? onTap;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black38, // 👈 لون الظل
              blurRadius: 6, // 👈 مدى انتشار الظل
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff1e2128),
        ),

        child: child,
      ),
    );
  }
}
