import 'package:doctorna/core/helpers/animation.dart';
import 'package:doctorna/core/widgets/custom_txt_fom_field.dart';
import 'package:doctorna/features/login/controller/login_cubit/login_cubit.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  late LoginCubit _cubit;
  bool obsecured = true;

  @override
  void initState() {
    super.initState();
    _cubit = context.read<LoginCubit>();
  }

  @override
  void dispose() {
    _cubit.disposeControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _cubit.key,
      child: Column(
        children: [
          20.verticalSpace,
          CustomFadeInRight(
            child: CustomTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email Required';
                } else if (!_cubit.emailController.text.contains('@')) {
                  return 'Invalid Email';
                }
              },
              controller: _cubit.emailController,
              label: 'Email',
              keyBoard: TextInputType.emailAddress,
            ),
          ),
          20.verticalSpace,
          CustomFadeInLeft(
            child: CustomTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password Required';
                } else if (_cubit.emailController.text.length <= 6) {
                  return 'Wrong Password';
                }
              },
              controller: _cubit.passwordController,
              label: 'Password',
              obscureText: obsecured,
              keyBoard: TextInputType.visiblePassword,
              suffixIconShow: true,
              suffixIconFunction: () => setState(() => obsecured = !obsecured),
            ),
          ),
          10.verticalSpace,
        ],
      ),
    );
  }
}
