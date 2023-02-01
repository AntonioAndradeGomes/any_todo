import 'package:any_todo/app/modules/list/models/task_model.dart';
import 'package:any_todo/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CardTask extends StatelessWidget {
  final TaskModel task;
  final Color listColor;
  const CardTask({
    Key? key,
    required this.task,
    required this.listColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 2,
      ),
      child: ListTile(
        onTap: () {
          print('tap');
        },
        dense: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        leading: IconButton(
          onPressed: () {},
          splashRadius: 20,
          icon: Icon(
            task.endDate != null ? Icons.check_circle : Icons.circle_outlined,
            color: task.endDate != null ? listColor : AppColors.greyColor,
            size: 30,
          ),
        ),
        title: Text(
          task.title,
          style: TextStyle(
            color: task.endDate != null ? listColor : Colors.black,
            fontSize: 15,
            decoration:
                task.endDate != null ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: IconButton(
          onPressed: () {},
          splashRadius: 20,
          icon: Icon(
            !task.isImportant ? Icons.star_border_outlined : Icons.star,
            size: 30,
          ),
          color: !task.isImportant
              ? AppColors.greyColor
              : AppColors.importantColor,
        ),
      ),
    );
  }
}
