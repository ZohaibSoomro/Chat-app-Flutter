import 'package:chat_app/utilities/widgets/roundedbtn.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  bool validated = false;

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController.addListener(() {
      if (_formKey.currentState!.validate()) {
        validated = true;
      } else {
        validated = false;
      }
      setState(() {});
    });
    _passwordController.addListener(() {
      if (_formKey.currentState!.validate()) {
        validated = true;
      } else {
        validated = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBaseColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.close,
                    color: kIconColor,
                    size: 30,
                  )),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Please enter your email address',
                      style: kTextStyle(30),
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      style: kTextStyle(),
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: kTextStyle().copyWith(color: kHintColor),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(width: 2.0, color: kBorderColor),
                        ),
                      ),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z]+\.[a-zA-Z]{2,}$')
                            .hasMatch(value!)) {
                          return "invalid email";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    RoundedButton(
                      isDisabled: !validated,
                      colored: validated,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          validated = true;
                          _formKey.currentState!.reset();
                          _emailController.clear();
                          _passwordController.clear();
                          setState(() {});
                        }
                      },
                      text: 'OK',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
