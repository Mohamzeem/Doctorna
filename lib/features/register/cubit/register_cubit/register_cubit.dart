import 'package:doctorna/features/register/cubit/register_cubit/register_state.dart';
import 'package:doctorna/features/register/data/models/register_request_model.dart';
import 'package:doctorna/features/register/data/repos/register_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo repo;
  RegisterCubit({required this.repo}) : super(const RegisterState.initial());

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final key = GlobalKey<FormState>();

  void disposeControllers() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    nameController.dispose();
    phoneController.dispose();
  }

  void validateThenRegister() {
    if (key.currentState!.validate()) {
      register();
    }
  }

  Future register() async {
    emit(const RegisterState.loading());
    final result = await repo.register(
      RegisterRequestModel(
        email: emailController.text.trim(),
        name: nameController.text.trim(),
        password: passwordController.text.trim(),
        confirmPassword: confirmPasswordController.text.trim(),
        phone: phoneController.text.trim(),
        gender: '0',
      ),
    );
    result.when(
      success: (data) => emit(RegisterState.success(data)),
      failure: (errorHandler) => emit(RegisterState.failure(
          errMsg: errorHandler.apiErrorModel.message ?? "Error")),
    );
  }
}
