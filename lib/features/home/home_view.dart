import 'package:doctorna/core/helpers/font_style.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'HOME VIEW',
          style: AppFonts.bold24Black,
        ),
      ),
    );
  }
}
