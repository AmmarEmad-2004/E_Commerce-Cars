import 'package:cars_app/modules/profile/presentation/screens/profile_header.dart';
import 'package:flutter/cupertino.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ProfileHeader(),
        ],
      ),
    );
  }
}