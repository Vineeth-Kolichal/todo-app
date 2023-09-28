import 'package:flutter/material.dart';
import '../routes/routes.dart';
import '../../presentation/screens/export_screens.dart';

class AppRouteGenerate {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (ctx) => const SplashScreen());
      case ScreenRoutes.login:
        return MaterialPageRoute(builder: (ctx) => const LoginScreen());
      case ScreenRoutes.signUp:
        return MaterialPageRoute(builder: (ctx) => const SignUpScreen());
      case ScreenRoutes.home:
        return MaterialPageRoute(builder: (ctx) => const HomeScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (ctx) {
      return const Scaffold(
        body: Center(
          child: Text('Something Error'),
        ),
      );
    });
  }
}
