import 'package:cars_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hint,
    this.isObscure = false,
    this.keyboardType,
    this.maxLines = 1,
    this.validator, this.controller,
  });
  final String? hint;
  final bool isObscure;
  final TextInputType? keyboardType;
  final int? maxLines;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
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
