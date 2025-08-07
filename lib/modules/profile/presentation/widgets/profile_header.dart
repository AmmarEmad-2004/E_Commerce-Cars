import 'package:cars_app/core/constants/app_images.dart';
import 'package:cars_app/core/helpers/spaces.dart';
import 'package:cars_app/core/themes/app_colors.dart';
import 'package:cars_app/core/widgets/custom_background.dart';
import 'package:cars_app/core/widgets/custom_elevated_button.dart';
import 'package:cars_app/modules/auth/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<UserModel>();
    bool notfound = user.image == " ";
    return CustomBackground(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: CircleAvatar(
                backgroundImage:
                    notfound
                        ? AssetImage(AppImages.person2)
                        : NetworkImage(user.image),
              ),
            ),
            verticalSpace(18),
            Text(
              user.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Text(
              user.email,
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
