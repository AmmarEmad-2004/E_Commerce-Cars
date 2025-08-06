import 'package:cars_app/core/helpers/spaces.dart';
import 'package:cars_app/core/widgets/custom_list_tile.dart';

import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomListTile(
          borderRadius: 10,
          tileColor: Color(0xff1d2127),
          leading: Icon(Icons.settings, color: Color(0xff3175b4)),
          title: 'Account Settings',
          icon: Icons.arrow_forward_ios,
        ),
        verticalSpace(16),
        CustomListTile(
          borderRadius: 10,

          tileColor: Color(0xff1d2127),

          leading: Icon(Icons.notifications_none, color: Color(0xff3175b4)),
          title: 'Notification Preferences',
          icon: Icons.arrow_forward_ios,
        ),
        verticalSpace(16),

        CustomListTile(
          borderRadius: 10,

          tileColor: Color(0xff1d2127),

          leading: Icon(Icons.help_outline, color: Color(0xff3175b4)),
          title: 'Help & Support',
          icon: Icons.arrow_forward_ios,
        ),
        verticalSpace(16),

        CustomListTile(
          borderRadius: 10,

          tileColor: Color(0xff1d2127),

          leading: Icon(Icons.privacy_tip_outlined, color: Color(0xff3175b4)),
          title: 'Privacy & Security',
          icon: Icons.arrow_forward_ios,
        ),
      ],
    );
  }
}
