import 'package:accounting_app/common/helper/navigator/app_navigator.dart';
import 'package:accounting_app/core/configs/assets/app_images.dart';
import 'package:accounting_app/core/configs/theme/app_colors.dart';
import 'package:accounting_app/presentation/auth/pages/signin.dart';
import 'package:accounting_app/presentation/home/pages/home.dart';
import 'package:accounting_app/presentation/splash/bloc/splash_cubit.dart';
import 'package:accounting_app/presentation/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          AppNavigator.pushReplacement(context, SigninPage());
        }
        if (state is Authenticated) {
          AppNavigator.pushReplacement(context, HomePage());
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(AppImages.logo),
          ),
        ),
      ),
    );
  }
}
