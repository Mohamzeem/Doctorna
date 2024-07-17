import 'package:doctorna/core/app/dependency_injection.dart';
import 'package:doctorna/features/home/cubit/home_cubit/home_cubit.dart';
import 'package:doctorna/features/home/view/widgets/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => di<HomeCubit>()..getSpecialization(),
        child: const SafeArea(child: HomeBody()),
      ),
    );
  }
}
