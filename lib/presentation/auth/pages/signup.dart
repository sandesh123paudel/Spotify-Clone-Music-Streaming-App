import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musicplayer/common/widgets/appbar/app_bar.dart';
import 'package:musicplayer/common/widgets/button/basic_app_button.dart';
import 'package:musicplayer/core/configs/assets/app_vectors.dart';
import 'package:musicplayer/data/models/auth/create_user_req.dart';
import 'package:musicplayer/domain/usecases/auth/signup.dart';
import 'package:musicplayer/presentation/auth/pages/signin.dart';
import 'package:musicplayer/presentation/root/pages/root.dart';

import '../../../service_locator.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
          title: SvgPicture.asset(
        AppVectors.logo,
        height: 40,
        width: 40,
      )),
      bottomNavigationBar: _signinText(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          _registerText(),
          const SizedBox(
            height: 30,
          ),
          _fullNameField(context),
          const SizedBox(height: 20),
          _emailField(context),
          const SizedBox(height: 20),
          _passwordField(context),
          const SizedBox(height: 20),
          BasicAppButton(
              onPressed: () async {
                var result = await sl<SignupUseCase>().call(
                    params: CreateUserReq(
                        fullName: _fullName.text.toString(),
                        email: _email.text.toString(),
                        password: _password.text.toString()));
                result.fold((l) {
                  var snackbar = SnackBar(content: Text(l));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }, (r) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const RootPage()),(route)=>false);
                });
              },
              title: 'Create Account'),
        ]),
      ),
    );
  }

  Widget _registerText() {
    return const Text(
      'Register',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _fullNameField(BuildContext context) {
    return TextField(
        controller: _fullName,
        decoration: const InputDecoration(
          hintText: 'Full Name',
        ).applyDefaults(Theme.of(context).inputDecorationTheme));
  }

  Widget _emailField(BuildContext context) {
    return TextField(
        controller: _email,
        decoration: const InputDecoration(
          hintText: 'Enter Email',
        ).applyDefaults(Theme.of(context).inputDecorationTheme));
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
        controller: _password,
        decoration: const InputDecoration(
          hintText: 'Password',
        ).applyDefaults(Theme.of(context).inputDecorationTheme));
  }

  Widget _signinText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          'Do you have an account?',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const SignInPage()));
          },
          child: const Text('SignIn',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
        ),
      ]),
    );
  }
}
