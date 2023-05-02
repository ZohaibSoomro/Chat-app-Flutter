import 'package:chat_app/constants.dart';
import 'package:chat_app/pages/login_page.dart';
import 'package:flutter/material.dart';

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
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                        colors: [kButtonUpperColor, kButtonLowerColor],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      minWidth: 200,
                      height: 50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.mail_outline,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Sign In with Email',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Sign up button
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: kButtonLowerColor, width: 2),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: 200,
                      height: 50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.app_registration_outlined,
                            color: kIconColor,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
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
