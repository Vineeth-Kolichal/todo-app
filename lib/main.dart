import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/application/routes/generate_route.dart';
import 'package:todo/business_logic/sign_up_screen/sign_up_screen_bloc.dart';
import 'package:todo/utils/colors/colors.dart';
import 'package:todo/utils/service_locatior/di/configure_injection.dart';
import 'presentation/screens/export_screens.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(TodoApp(
    appRouteGenerate: AppRouteGenerate(),
  ));
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key, required this.appRouteGenerate});
  final AppRouteGenerate appRouteGenerate;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<SignUpScreenBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: customprimarycolor,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          scaffoldBackgroundColor: const Color.fromARGB(255, 228, 228, 227),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        onGenerateRoute: appRouteGenerate.onGenerateRoute,
      ),
    );
  }
}
