import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musicplayer/common/widgets/appbar/app_bar.dart';
import 'package:musicplayer/common/widgets/button/basic_app_button.dart';
import 'package:musicplayer/core/configs/assets/app_vectors.dart';
import 'package:musicplayer/presentation/auth/pages/signup.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
          title: SvgPicture.asset(
        AppVectors.logo,
        height: 40,
        width: 40,
      )),
      bottomNavigationBar: _signUpText(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          _registerText(),
          const SizedBox(
            height: 30,
          ),
          _emailField(context),
          const SizedBox(height: 20),
          _passwordField(context),
          const SizedBox(height: 20),
          BasicAppButton(onPressed: () {}, title: 'Sign In'),
        ]),
      ),
    );
  }

  Widget _registerText() {
    return const Text(
      'Sign In',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
        decoration: const InputDecoration(
      hintText: 'Enter Email',
    ).applyDefaults(Theme.of(context).inputDecorationTheme));
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
        decoration: const InputDecoration(
      hintText: 'Password',
    ).applyDefaults(Theme.of(context).inputDecorationTheme));
  }


  Widget _signUpText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          'Not a member?',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const SignUpPage()));
          },
          child: const Text('Register Now',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
        ),
      ]),
    );
  }
}
