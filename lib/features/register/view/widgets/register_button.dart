import 'package:doctorna/core/helpers/animation.dart';
import 'package:doctorna/core/helpers/extensions.dart';
import 'package:doctorna/core/helpers/font_style.dart';
import 'package:doctorna/core/route/routes.dart';
import 'package:doctorna/core/widgets/custom_button.dart';
import 'package:doctorna/core/widgets/custom_dialog.dart';
import 'package:doctorna/features/register/cubit/register_cubit/register_cubit.dart';
import 'package:doctorna/features/register/cubit/register_cubit/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (data) {
            context.pushReplacmentName(Routes.loginView);
            CustomDialog.success(
              context: context,
              text: 'Account created successfully',
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
              context.read<RegisterCubit>().validateThenRegister();
            },
            text: 'Register',
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
