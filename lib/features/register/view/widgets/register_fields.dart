import 'package:doctorna/core/helpers/animation.dart';
import 'package:doctorna/core/helpers/regex.dart';
import 'package:doctorna/core/widgets/custom_passwod_validation.dart';
import 'package:doctorna/core/widgets/custom_txt_fom_field.dart';
import 'package:doctorna/features/register/cubit/register_cubit/register_cubit.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterFields extends StatefulWidget {
  const RegisterFields({super.key});

  @override
  State<RegisterFields> createState() => _RegisterFieldsState();
}

class _RegisterFieldsState extends State<RegisterFields> {
  late RegisterCubit _cubit;
  bool obsecured = true;

  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  void passwordListener() {
    _cubit.passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(_cubit.passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(_cubit.passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(_cubit.passwordController.text);
        hasNumber = AppRegex.hasNumber(_cubit.passwordController.text);
        hasMinLength = AppRegex.hasMinLength(_cubit.passwordController.text);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _cubit = context.read<RegisterCubit>();
    passwordListener();
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
          //^ name text field
          CustomFadeInLeft(
            child: CustomTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Name Required';
                } else if (_cubit.emailController.text.length <= 6) {
                  return 'Wrong Name at least 6 characters';
                }
              },
              controller: _cubit.nameController,
              label: 'Name',
              keyBoard: TextInputType.name,
            ),
          ),
          15.verticalSpace,
          //^ email text field
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
          15.verticalSpace,
          //^ password text field
          CustomFadeInLeft(
            child: CustomTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password Required';
                } else if (!AppRegex.isPasswordValid(value)) {
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
          15.verticalSpace,
          //^ confirm password text field
          CustomFadeInRight(
            child: CustomTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Confirm Password Required';
                } else if (_cubit.confirmPasswordController.text !=
                    _cubit.passwordController.text) {
                  return 'Wrong Password';
                }
              },
              controller: _cubit.confirmPasswordController,
              label: 'Confirm Password',
              obscureText: obsecured,
              keyBoard: TextInputType.visiblePassword,
            ),
          ),
          15.verticalSpace,
          //^ phone text field
          CustomFadeInLeft(
            child: CustomTextFormField(
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPhoneNumberValid(value)) {
                  return 'Phone Required';
                }
              },
              controller: _cubit.phoneController,
              label: 'Phone Number',
              keyBoard: TextInputType.phone,
            ),
          ),
          10.verticalSpace,
          CustomFadeInRight(
            child: CustomPasswordValidation(
              hasUpperCase: hasUppercase,
              hasSpecialCharacters: hasSpecialCharacters,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength,
              hasLowerCase: hasLowercase,
            ),
          ),
          10.verticalSpace,
        ],
      ),
    );
  }
}
