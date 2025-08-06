import 'package:cars_app/core/constants/app_images.dart';
import 'package:cars_app/core/helpers/spaces.dart';
import 'package:cars_app/core/themes/app_colors.dart';
import 'package:cars_app/core/widgets/custom_background.dart';
import 'package:cars_app/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage(AppImages.person),
              ),
            ),
            verticalSpace(18),
            Text(
              'Ammar Emad',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Text(
              'ammaremad@gmail.com',
              style: TextStyle(color: AppColors.secondaryColor, fontSize: 14),
            ),
            verticalSpace(14),
            CustomElevatedButton(
              onPressed: () {},
              foregroundColor: Color(0xff3175b4),

              backgroundColor: Colors.black,
              side: BorderSide(color: Color(0xff3175b4)),
              radius: 6,
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
