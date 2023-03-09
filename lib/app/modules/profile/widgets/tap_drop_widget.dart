import 'package:any_todo/core/theme/colors.dart';
import 'package:flutter/material.dart';

class TapDrop extends StatelessWidget {
  final String title;
  final String value;
  final GestureTapCallback? onTap;
  const TapDrop({
    Key? key,
    required this.title,
    required this.value,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: onTap == null ? AppColors.greyColor : null,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 2,
            ),
            child: Text(
              value,
              style: TextStyle(
                color: AppColors.greyColor,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
