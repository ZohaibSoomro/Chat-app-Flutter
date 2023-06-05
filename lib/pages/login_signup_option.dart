import 'package:chat_app/constants.dart';
import 'package:chat_app/pages/login_page.dart';
import 'package:flutter/material.dart';

import '../utilities/widgets/roundedbtn.dart';
import 'signup_page.dart';

class LoginSignupOption extends StatelessWidget {
  const LoginSignupOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBaseColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Chat App',
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
                color: kIconColor,
              ),
            ),
            const SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Sign in button
                  RoundedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    text: 'Sign In with Email',
                    icon: Icons.mail_outline,
                  ),
                  const SizedBox(height: 20),
                  RoundedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupPage(),
                        ),
                      );
                    },
                    text: 'Sign up',
                    icon: Icons.app_registration_rounded,
                    colored: false,
                  ),
                  // Sign up button

                  const SizedBox(height: 20),
                  // Forgot password button
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: kHightLightedBtnColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Terms of use',
                    style: TextStyle(
                      color: kHightLightedBtnColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Privacy policy',
                    style: TextStyle(
                      color: kHightLightedBtnColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
