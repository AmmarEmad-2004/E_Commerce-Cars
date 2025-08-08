import 'package:cars_app/core/helpers/snack_bar.dart';
import 'package:cars_app/core/routing/app_routers.dart';
import 'package:cars_app/core/widgets/custom_elevated_button.dart';
import 'package:cars_app/modules/profile/presentation/logic/sign_out_cubit/sign_out_cubit.dart';
import 'package:cars_app/modules/profile/presentation/logic/sign_out_cubit/sign_out_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LogoutAndDeleteSection extends StatelessWidget {
  const LogoutAndDeleteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocListener<SignOutCubit, SignOutState>(
          listener: (context, state) {
            if (state is SignOutSuccess) {
              ShowSnackBar.show(context, 'Successfully Sign Out');
              GoRouter.of(context).pushReplacement(AppRouters.logIn);
            } else if (state is SignOutFailure) {
              ShowSnackBar.show(context, state.message);
            }
          },
          child: CustomElevatedButton(
            onPressed: () {
              BlocProvider.of<SignOutCubit>(context).signOut();
            },
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
