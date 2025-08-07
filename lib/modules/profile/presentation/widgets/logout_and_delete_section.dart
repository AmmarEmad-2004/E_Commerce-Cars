import 'package:cars_app/core/widgets/custom_elevated_button.dart';

import 'package:flutter/material.dart';

class LogoutAndDeleteSection extends StatelessWidget {
  const LogoutAndDeleteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(
          onPressed: () {},
          radius: 6,
          foregroundColor: Colors.white,
          backgroundColor: Color(0xfffa666d),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.logout_rounded, color: Colors.white, size: 20),
              Text('Logout', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),

        CustomElevatedButton(
          onPressed: () {},
          radius: 6,
          backgroundColor: Color(0xfffa666d),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Icon(Icons.delete_rounded, color: Colors.white, size: 20),
              Text('Delete Account', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}
