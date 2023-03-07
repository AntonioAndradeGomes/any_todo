import 'package:flutter/material.dart';

enum LoginMethod { appleBlack, google }

class SocialLoginWidget extends StatelessWidget {
  final LoginMethod loginMethod;
  final Function() onPressed;
  final String text;
  final Color textColor;

  String get _imageUrlMethod {
    switch (loginMethod) {
      case LoginMethod.appleBlack:
        return 'assets/images/apple_white.png';
      case LoginMethod.google:
        return 'assets/images/logo_google.png';
    }
  }

  Color get _colorMethod {
    switch (loginMethod) {
      case LoginMethod.appleBlack:
        return Colors.black;
      case LoginMethod.google:
        return Colors.white;
    }
  }

  const SocialLoginWidget({
    Key? key,
    required this.loginMethod,
    this.textColor = Colors.white,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          _colorMethod,
        ),
        overlayColor: loginMethod == LoginMethod.google
            ? MaterialStateProperty.all<Color>(
                Colors.grey.shade100,
              )
            : null,
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              _imageUrlMethod,
              height: 30,
              width: 30,
            ),
            Text(
              text,
              style: TextStyle(
                color: textColor,
              ),
            ),
            const SizedBox()
          ],
        ),
      ),
    );
  }
}
