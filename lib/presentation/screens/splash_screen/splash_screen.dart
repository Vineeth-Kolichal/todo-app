import 'package:flutter/material.dart';
import 'package:todo/application/routes/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(Duration(seconds: 3), () {
        Navigator.of(context).pushReplacementNamed(ScreenRoutes.login);
      });
    });
    return Scaffold();
  }
}
