import 'package:doctorna/core/helpers/animation.dart';
import 'package:doctorna/core/helpers/extensions.dart';
import 'package:doctorna/core/helpers/font_style.dart';
import 'package:doctorna/core/route/routes.dart';
import 'package:doctorna/core/widgets/custom_button.dart';
import 'package:doctorna/core/widgets/custom_dialog.dart';
import 'package:doctorna/features/login/controller/login_cubit/login_cubit.dart';
import 'package:doctorna/features/login/controller/login_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (data) {
            context.pushReplacmentName(Routes.homeView);
            CustomDialog.success(
              context: context,
              text: 'Logged in successfully',
            );
          },
          failure: (error) => CustomDialog.success(
            context: context,
            isSuccess: false,
            text: error.toString(),
          ),
        );
      },
      builder: (context, state) {
        return CustomFadeInUp(
          child: CustomButton(
            onPressed: () {
              context.read<LoginCubit>().validateThenLogin();
            },
            text: 'Log In',
            width: 400,
            height: 50,
            textStyle: AppFonts.semiBold10White,
            isLoading: state is Loading,
          ),
        );
      },
    );
  }
}
