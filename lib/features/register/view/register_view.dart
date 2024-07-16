import 'package:doctorna/core/app/dependency_injection.dart';
import 'package:doctorna/features/register/cubit/register_cubit/register_cubit.dart';
import 'package:doctorna/features/register/view/widgets/register_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<RegisterCubit>(),
      child: const Scaffold(
        body: SafeArea(child: RegisterBody()),
      ),
    );
  }
}
