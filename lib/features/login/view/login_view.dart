import 'package:doctorna/core/app/dependency_injection.dart';
import 'package:doctorna/features/login/cubit/login_cubit/login_cubit.dart';
import 'package:doctorna/features/login/view/widgets/login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<LoginCubit>(),
      child: const Scaffold(
        body: SafeArea(child: LoginBody()),
      ),
    );
  }
}
