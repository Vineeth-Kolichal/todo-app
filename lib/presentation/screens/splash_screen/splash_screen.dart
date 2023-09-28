import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/application/routes/routes.dart';
import 'package:todo/business_logic/splash_screen/splash_screen_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp)async {
     
        String nextRoute =
            await context.read<SplashScreenCubit>().nextScreenRoute();
        Future.delayed(
        const   Duration(milliseconds: 3000),
          () {
            Navigator.of(context).pushReplacementNamed(nextRoute);
          },
        );
      });
 
    return Scaffold();
  }
}
