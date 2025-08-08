import 'package:cars_app/core/helpers/snack_bar.dart';
import 'package:cars_app/core/helpers/validation.dart';
import 'package:cars_app/core/routing/app_routers.dart';
import 'package:cars_app/core/themes/app_colors.dart';
import 'package:cars_app/core/widgets/custom_elevated_button.dart';
import 'package:cars_app/core/widgets/custom_loading.dart';
import 'package:cars_app/core/widgets/custom_text_feild.dart';
import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/auth/presentation/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:cars_app/modules/auth/presentation/logic/sign_up_cubit/sign_up_state.dart';
import 'package:cars_app/modules/layout/logic/cubit/user_cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  GlobalKey<FormState> key = GlobalKey();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          final user = state.user;
          context.read<UserCubit>().setUser(user);
          ShowSnackBar.show(context, 'Successfully Sign Up');
          GoRouter.of(
            context,
          ).pushReplacement( AppRouters.homeLayout);
        } else if (state is SignUpFailure) {
          ShowSnackBar.show(context, state.message);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Full Name',
                style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
              ),
              CustomTextFormField(
                controller: nameController,
                validator:
                    (p0) =>
                        Validations.validateName(context, nameController.text),
                hint: 'name',
              ),

              CustomSize(h: 8),
              Text(
                'Email',
                style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
              ),
              CustomTextFormField(
                controller: emailController,
                validator:
                    (p0) => Validations.validateEmail(
                      context,
                      emailController.text,
                    ),
                hint: 'email',
              ),
              CustomSize(h: 8),
              Text(
                'Password',
                style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
              ),
              CustomTextFormField(
                controller: passwordController,
                validator:
                    (p0) => Validations.validatePassword(
                      context,
                      passwordController.text,
                    ),
                isObscure: true,
                hint: 'password',
              ),
              CustomSize(h: 8),
              Text(
                'Confirm Password',
                style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
              ),
              CustomTextFormField(
                controller: confirmPasswordController,
                validator:
                    (p0) => Validations.validateConfirmPassword(
                      context,
                      passwordController.text,
                      confirmPasswordController.text,
                    ),
                isObscure: true,
                hint: 'confirm password',
              ),
              CustomSize(h: 20),
              BlocBuilder<SignUpCubit, SignUpState>(
                builder: (context, state) {
                  if (state is SignUpLoading) {
                    return LoadingWidget();
                  } else {
                    return CustomElevatedButton(
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          context.read<SignUpCubit>().signUp(
                            emailController.text.trim(),
                            passwordController.text.trim(),
                            nameController.text.trim(),
                          );
                        }
                      },

                      backgroundColor: Color(0xff3175b4),
                      child: Text('Sign In'),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
