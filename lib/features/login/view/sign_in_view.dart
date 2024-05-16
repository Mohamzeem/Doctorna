import 'package:doctorna/core/app/dependency_injection.dart';
import 'package:doctorna/features/login/controller/login_cubit/login_cubit.dart';
import 'package:doctorna/features/login/view/widgets/login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
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
