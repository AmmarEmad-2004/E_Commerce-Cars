import 'package:cars_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hint,
    this.isObscure = false,
    this.keyboardType,
    this.maxLines = 1,
  });
  final String? hint;
  final bool isObscure;
  final TextInputType? keyboardType;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      keyboardType: keyboardType,
      obscureText: isObscure,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: AppColors.secondaryColor, fontSize: 16),

        filled: true,
        fillColor: Color.fromARGB(133, 70, 77, 94),
        border: border(),
        focusedBorder: border(),
        enabledBorder: border(),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide.none,
    );
  }
}
