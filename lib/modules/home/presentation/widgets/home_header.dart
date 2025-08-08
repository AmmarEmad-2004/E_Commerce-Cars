import 'package:cars_app/core/constants/app_images.dart';
import 'package:cars_app/core/widgets/custom_list_tile.dart';
import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/home/presentation/widgets/brand_list.dart';
import 'package:cars_app/modules/home/presentation/widgets/search_text_feild.dart';
import 'package:cars_app/modules/layout/logic/cubit/user_cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserCubit>().state;
    return Container(
      decoration: BoxDecoration(color: Color(0xFF121212)),
      child: Column(
        children: [
          CustomListTile(
            borderRadius: 0,
            subTitle: Text(
              user!.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            leading: CircleAvatar(
              backgroundImage: (user.image.trim().isNotEmpty)
                  ? NetworkImage(user.image)
                  : AssetImage(AppImages.person) as ImageProvider,
            ),
            title: 'Welcome 👋',
            icon: Icons.notifications_none,
          ),
          CustomSize(h: 13),
          SearchTextFeild(),
          CustomSize(h: 13),
          BrandList(),
        ],
      ),
    );
  }
}


/*
import 'package:cars_app/core/constants/app_images.dart';
import 'package:cars_app/core/widgets/custom_list_tile.dart';
import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/home/presentation/widgets/brand_list.dart';
import 'package:cars_app/modules/home/presentation/widgets/search_text_feild.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  String? userName, userImage;
@override
  void initState() {
    getUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFF121212)),
      child: Column(
        children: [
          CustomListTile(
            borderRadius: 0,
            subTitle: Text(
               userName ?? 'NO User',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            leading: CircleAvatar(
              backgroundImage: (userImage != null && userImage!.trim().isNotEmpty)
                  ? NetworkImage(userImage!)
                  : AssetImage(AppImages.person) as ImageProvider,
            ),
            title: 'Welcome 👋',
            icon: Icons.notifications_none,
          ),
          CustomSize(h: 13),
          SearchTextFeild(),
          CustomSize(h: 13),
          BrandList(),
        ],
      ),
    );
  }
  Future<void> getUserData() async {
  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    final doc = await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .get();

    final data = doc.data();
    if (data != null) {
      setState(() {
        userName = data['name'] ?? 'NO User';
        userImage = data['image'] ?? AppImages.person;
      });
    }
  }
}
}
 */

/*
import 'package:cars_app/core/constants/app_images.dart';
import 'package:cars_app/core/widgets/custom_list_tile.dart';
import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/auth/data/models/user_model.dart';
import 'package:cars_app/modules/home/presentation/widgets/brand_list.dart';
import 'package:cars_app/modules/home/presentation/widgets/search_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<UserModel>();
    return Container(
      decoration: BoxDecoration(color: Color(0xFF121212)),
      child: Column(
        children: [
          CustomListTile(
            borderRadius: 0,
            subTitle: Text(
              user.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage(AppImages.person),
            ),
            title: 'Welcome 👋',
            icon: Icons.notifications_none,
          ),
          CustomSize(h: 13),
          SearchTextFeild(),
          CustomSize(h: 13),
          BrandList(),
        ],
      ),
    );
  }
}*/

