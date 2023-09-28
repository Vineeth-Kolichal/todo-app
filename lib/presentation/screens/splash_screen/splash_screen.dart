import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/business_logic/splash_screen/splash_screen_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      String nextRoute =
          await context.read<SplashScreenCubit>().nextScreenRoute();
      Future.delayed(
        const Duration(milliseconds: 3000),
        () {
          Navigator.of(context).pushReplacementNamed(nextRoute);
        },
      );
    });

    return const Scaffold(
      body: Center(
        child: IconSection(),
      ),
    );
  }
}

class IconSection extends StatefulWidget {
  const IconSection({
    super.key,
  });

  @override
  State<IconSection> createState() => _IconSectionState();
}

class _IconSectionState extends State<IconSection> {
  bool changeSize = false;
  @override
  void initState() {
    Timer(const Duration(microseconds: 1000), () {
      setState(() {
        changeSize = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.bounceOut,
      height: changeSize ? 150 : 50,
      width: changeSize ? 150 : 50,
      decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage('assets/image/app-icon.png'))),
      duration: const Duration(milliseconds: 1000),
    );
  }
}
