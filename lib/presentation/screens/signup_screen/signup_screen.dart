import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';
import 'package:todo/application/routes/routes.dart';
import 'package:todo/business_logic/sign_up_screen/sign_up_screen_bloc.dart';
import 'package:todo/presentation/widgets/message_snackbar.dart';

import '../../../utils/colors/colors.dart';
import '../../widgets/export_common_widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final signupBloc = context.read<SignUpScreenBloc>();
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
                        key: signupBloc.formkey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            LottieBuilder.asset('assets/lottie/login.json',
                                height: size.width * 0.5),
                            Material(
                              child: Text(
                                'Sign-Up',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            Space.y(10),
                            CustomTextFormField(
                              hintText: 'Name',
                              controller: signupBloc.nameController,
                              prefixIcon: Iconsax.user,
                            ),
                            CustomTextFormField(
                              hintText: 'e-mail',
                              controller: signupBloc.emailController,
                              prefixIcon: Iconsax.sms,
                            ),
                            CustomTextFormField(
                              hintText: 'Password',
                              controller: signupBloc.passwordController,
                              prefixIcon: Iconsax.lock,
                            ),
                            BlocConsumer<SignUpScreenBloc, SignUpScreenState>(
                              listener: (context, state) {
                                log(state.hasError.toString());
                                log("${state.signUpRespModel?.message}");
                                if (state.hasError) {
                                  messageSnackbar(
                                      context: context,
                                      message: "Error while signup");
                                } else {
                                  if (state.signUpRespModel?.message ==
                                      'Account created successfully') {
                                    messageSnackbar(
                                        context: context,
                                        message:
                                            state.signUpRespModel!.message!,
                                        isError: false);
                                    Navigator.of(context)
                                        .pushNamedAndRemoveUntil(
                                            ScreenRoutes.login,
                                            (route) => false);
                                  } else {
                                    messageSnackbar(
                                      context: context,
                                      message:
                                          state.signUpRespModel?.message ?? '',
                                    );
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
                                  buttonLabel: "Signup",
                                  onPressed: () {
                                    if (signupBloc.formkey.currentState!
                                        .validate()) {
                                      signupBloc.add(const SignUp());
                                    }
                                  },
                                );
                              },
                            ),
                            Space.y(10),
                            const Material(
                                child: Text("Already have an account?")),
                            Material(
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushReplacementNamed(ScreenRoutes.login);
                                },
                                child: const Text(
                                  'Sign In',
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
