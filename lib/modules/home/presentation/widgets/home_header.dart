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
}
