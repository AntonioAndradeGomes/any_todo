import 'package:flutter/material.dart';

class ShowCompletedWidget extends StatelessWidget {
  final GestureTapCallback onTap;
  final bool showCompleted;
  const ShowCompletedWidget({
    Key? key,
    required this.onTap,
    required this.showCompleted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Material(
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: onTap,
          child: Ink(
            padding: const EdgeInsets.symmetric(
              vertical: 2,
              horizontal: 10,
            ),
            height: 25,
            width: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                const Text(
                  'Concluídas',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  color: Colors.black,
                  showCompleted
                      ? Icons.keyboard_arrow_down_rounded
                      : Icons.keyboard_arrow_right_rounded,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
