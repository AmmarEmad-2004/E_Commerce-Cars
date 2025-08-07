import 'package:cars_app/core/helpers/snack_bar.dart';
import 'package:cars_app/core/helpers/validation.dart';
import 'package:cars_app/core/routing/app_routers.dart';
import 'package:cars_app/core/themes/app_colors.dart';
import 'package:cars_app/core/widgets/custom_elevated_button.dart';
import 'package:cars_app/core/widgets/custom_loading.dart';
import 'package:cars_app/core/widgets/custom_text_feild.dart';
import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/auth/presentation/logic/log_in_cubit/login_cubit.dart';
import 'package:cars_app/modules/auth/presentation/logic/log_in_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> key = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          ShowSnackBar.show(context, 'Successfully Logged In');
          GoRouter.of(context).pushReplacement(AppRouters.homeLayout);
        } else if (state is LoginFailure) {
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
                'Email Address',
                style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
              ),
              CustomTextFormField(
                validator:
                    (p0) => Validations.validateEmail(
                      context,
                      emailController.text,
                    ),
                controller: emailController,
                hint: 'Enter your email',
              ),

              CustomSize(h: 8),
              Text(
                'Password',
                style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
              ),
              CustomTextFormField(
                validator:
                    (p0) => Validations.validatePassword(
                      context,
                      passwordController.text,
                    ),
                controller: passwordController,
                isObscure: true,
                hint: 'Enter your password',
              ),
              CustomSize(h: 72),
              BlocBuilder<LoginCubit, LoginState>(
                builder: (context, state) {
                  if (state is LoginLoading) {
                    return LoadingWidget();
                  } else {
                    return CustomElevatedButton(
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          context.read<LoginCubit>().login(
                            emailController.text.trim(),
                            passwordController.text.trim(),
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
