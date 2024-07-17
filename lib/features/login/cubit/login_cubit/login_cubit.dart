import 'package:doctorna/features/login/data/models/login_request_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctorna/features/login/cubit/login_cubit/login_state.dart';
import 'package:doctorna/features/login/data/repos/login_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo repo;
  LoginCubit({required this.repo}) : super(const LoginState.initial());

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final key = GlobalKey<FormState>();

  void disposeControllers() {
    emailController.dispose();
    passwordController.dispose();
  }

  void validateThenLogin() {
    if (key.currentState!.validate()) {
      login();
    }
  }

  void login() async {
    emit(const LoginState.loading());
    final result = await repo.login(
      LoginRequestModel(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      ),
    );
    result.when(
      success: (loginResponse) async {
        await repo.saveUserToken(loginResponse.userData!.token!);
        emit(LoginState.success(loginResponse));
      },
      failure: (errorHandler) => emit(LoginState.failure(
          errMsg: errorHandler.apiErrorModel.message ?? "Error")),
    );
  }
}
