import 'package:flutter/material.dart';

class CircleButtonTaskWidget extends StatelessWidget {
  final bool active;
  final bool isStar;
  final Color colorActive;
  final Color colorInactive;
  final VoidCallback onPressed;

  const CircleButtonTaskWidget({
    Key? key,
    required this.active,
    required this.colorActive,
    required this.colorInactive,
    required this.onPressed,
    this.isStar = false,
  }) : super(key: key);

  IconData get _iconData {
    if (!isStar) {
      return active ? Icons.check_circle : Icons.circle_outlined;
    }
    return active ? Icons.star : Icons.star_border_outlined;
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        _iconData,
        color: active ? colorActive : colorInactive,
        size: 30,
      ),
      splashRadius: 20,
    );
  }
}
