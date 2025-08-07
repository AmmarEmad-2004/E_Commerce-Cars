import 'package:flutter/material.dart';

class SearchTextFeild extends StatelessWidget {
  const SearchTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search, size: 30),
        prefixIconColor: Colors.grey[400],
        fillColor: Color(0xFF1E1E1E),
        hintText: 'Search your car',
        hintStyle: TextStyle(
          color: Colors.grey[500],
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        border: border(),
        enabledBorder: border(),
        focusedBorder: border(),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: const Color.fromARGB(255, 175, 175, 175)),
    );
  }
}
