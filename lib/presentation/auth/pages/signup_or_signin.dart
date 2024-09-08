import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musicplayer/common/helpers/is_dark_mode.dart';
import 'package:musicplayer/common/widgets/appbar/app_bar.dart';
import 'package:musicplayer/common/widgets/button/basic_app_button.dart';
import 'package:musicplayer/core/configs/assets/app_images.dart';
import 'package:musicplayer/core/configs/assets/app_vectors.dart';
import 'package:musicplayer/presentation/auth/pages/signin.dart';
import 'package:musicplayer/presentation/auth/pages/signup.dart';

class SignUpOrSignInPage extends StatelessWidget {
  const SignUpOrSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BasicAppbar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.topPattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVectors.bottomPattern),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(AppImages.authBG)),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppVectors.logo),
                    const SizedBox(
                      height: 55,
                    ),
                    const Text(
                      'Enjoy Listening To Music',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color:
                              context.isDarkMode ? Colors.white : Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: BasicAppButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                             SignUpPage()));
                              },
                              title: 'Register',
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            flex: 1,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                               SignInPage()));
                                },
                                child: Text('Sign In',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: context.isDarkMode
                                            ? Colors.white
                                            : Colors.black)))),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
