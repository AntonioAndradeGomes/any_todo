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
    print(Theme.of(context).brightness);
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          _colorMethod,
        ),
        overlayColor: loginMethod == LoginMethod.google
            ? MaterialStateProperty.all<Color>(
                Theme.of(context).brightness == Brightness.dark
                    ? Theme.of(context).primaryColor.withAlpha(30)
                    : Colors.grey.shade200,
              )
            : null,
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: Theme.of(context).brightness == Brightness.dark
                ? const BorderSide(
                    color: Colors.white,
                  )
                : BorderSide.none,
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
