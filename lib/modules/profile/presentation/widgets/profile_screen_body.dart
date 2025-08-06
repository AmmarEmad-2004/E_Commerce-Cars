import 'package:cars_app/core/helpers/spaces.dart';
import 'package:cars_app/modules/profile/presentation/widgets/profile_header.dart';
import 'package:cars_app/modules/profile/presentation/widgets/profile_body.dart';

import 'package:flutter/material.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [ProfileHeader(), verticalSpace(24), ProfileBody()],
        ),
      ),
    );
  }
}
