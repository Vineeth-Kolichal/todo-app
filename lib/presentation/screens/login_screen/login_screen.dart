
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';
import 'package:todo/application/routes/routes.dart';
import 'package:todo/business_logic/sign_in_screen/sign_in_bloc.dart';

import '../../../utils/colors/colors.dart';
import '../../widgets/export_common_widgets.dart';
import '../../widgets/message_snackbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signin = context.read<SignInBloc>();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.width * 1.2,
            width: size.width,
            decoration: const BoxDecoration(
                color: Color(0xFF42D1B2),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Hero(
                tag: 'test',
                child: Container(
                  constraints: BoxConstraints(maxWidth: size.width * 0.8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Form(
                        key: signin.formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            LottieBuilder.asset('assets/lottie/login.json',
                                height: size.width * 0.5),
                            Material(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            Space.y(10),
                            CustomTextFormField(
                              hintText: 'e-mail',
                              controller: signin.emailController,
                              prefixIcon: Iconsax.sms,
                            ),
                            CustomTextFormField(
                              hintText: 'Password',
                              controller: signin.passwordController,
                              prefixIcon: Iconsax.lock,
                            ),
                            BlocConsumer<SignInBloc, SignInState>(
                              listener: (context, state) {
                                if (state.message != null) {
                                  if (state.message ==
                                      'Successfully logged in') {
                                    messageSnackbar(
                                        context: context,
                                        message: state.message!,
                                        isError: false);
                                    Navigator.of(context)
                                        .pushNamedAndRemoveUntil(
                                      ScreenRoutes.home,
                                      (route) => false,
                                    );
                                  } else {
                                    messageSnackbar(
                                        context: context,
                                        message: state.message!,
                                        isError: true);
                                  }
                                }
                              },
                              builder: (context, state) {
                                if (state.isLoading) {
                                  return Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: LoadingAnimationWidget.inkDrop(
                                          color: customprimarycolor, size: 25),
                                    ),
                                  );
                                }
                                return CustomElevatedButton(
                                  buttonLabel: "Sign In",
                                  onPressed: () {
                                    if (signin.formKey.currentState!
                                        .validate()) {
                                      signin.add(const SignIn());
                                    }
                                  },
                                );
                              },
                            ),
                            Space.y(10),
                            const Material(
                                child: Text("Don't you have an account?")),
                            Material(
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacementNamed(
                                      ScreenRoutes.signUp);
                                },
                                child: const Text(
                                  'SignUp',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                      color: customprimarycolor),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


