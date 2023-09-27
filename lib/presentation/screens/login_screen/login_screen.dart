import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:todo/application/routes/routes.dart';

import '../../../utils/colors/colors.dart';
import '../../widgets/export_common_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                            controller: TextEditingController(),
                            prefixIcon: Iconsax.sms,
                          ),
                          CustomTextFormField(
                            hintText: 'Password',
                            controller: TextEditingController(),
                            prefixIcon: Iconsax.lock,
                          ),
                          CustomElevatedButton(
                            buttonLabel: "Sign In",
                            onPressed: () {},
                          ),
                          Space.y(10),
                          const Material(
                              child: Text("Don't you have an account?")),
                          Material(
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushReplacementNamed(ScreenRoutes.signUp);
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
        ],
      ),
    );
  }
}
