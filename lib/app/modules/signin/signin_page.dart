import 'package:any_todo/app/modules/signin/widgets/header_column_widget.dart';
import 'package:any_todo/app/modules/signin/widgets/social_login_widget.dart';
import 'package:any_todo/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const HeaderColumnWidget(),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SocialLoginWidget(
                  loginMethod: LoginMethod.google,
                  text: 'Login com Google',
                  textColor: Colors.black,
                  onPressed: () {
                    Get.offNamed(
                      AppRoutes.HOME,
                    );
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                SocialLoginWidget(
                  loginMethod: LoginMethod.appleBlack,
                  text: 'Login com Apple',
                  onPressed: () {
                    Get.offNamed(
                      AppRoutes.HOME,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
