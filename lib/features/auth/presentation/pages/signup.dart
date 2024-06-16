import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterblog/core/theme/app_pallete.dart';
import 'package:flutterblog/features/auth/presentation/widgets/auth_button.dart';
import 'package:flutterblog/features/auth/presentation/widgets/auth_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign Up',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const AuthField(hintText: 'Name'),
            const SizedBox(height: 15),
            const AuthField(hintText: 'Email'),
            const SizedBox(height: 15),
            const AuthField(hintText: 'Password'),
            const SizedBox(height: 20),
            const AuthButton(),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: "Don't have an  account? ",
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: ' Sign In',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppPallete.gradient2,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}