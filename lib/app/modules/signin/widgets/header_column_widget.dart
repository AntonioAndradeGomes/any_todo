import 'package:flutter/material.dart';

class HeaderColumnWidget extends StatelessWidget {
  const HeaderColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.check_circle_rounded,
          size: 120,
          color: Theme.of(context).primaryColor,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
          ),
          child: Text(
            'Any To Do',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 25,
            ),
          ),
        ),
        const SizedBox(
          width: 240,
          child: Text(
            'Realize o Login e organize as suas tarefas!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
