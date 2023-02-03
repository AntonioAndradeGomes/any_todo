import 'package:any_todo/app/modules/list/models/list_model.dart';
import 'package:any_todo/app/modules/list/models/task_model.dart';
import 'package:any_todo/core/theme/colors.dart';
import 'package:any_todo/core/widgets/circle_button_task_widget.dart';
import 'package:any_todo/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardTask extends StatelessWidget {
  final TaskModel task;
  final ListModel list;
  const CardTask({
    Key? key,
    required this.task,
    required this.list,
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
          Get.toNamed(
            AppRoutes.TASK,
            arguments: {
              'task': task,
              'nameList': list.name,
              'color': list.color,
            },
          );
        },
        dense: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        leading: CircleButtonTaskWidget(
          active: task.endDate != null,
          colorActive: list.color,
          colorInactive: AppColors.greyColor,
          onPressed: () {},
        ),
        title: Text(
          task.title,
          style: TextStyle(
            color: task.endDate != null ? list.color : Colors.black,
            fontSize: 15,
            decoration:
                task.endDate != null ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: CircleButtonTaskWidget(
          active: task.isImportant,
          colorActive: AppColors.importantColor,
          colorInactive: AppColors.greyColor,
          onPressed: () {},
          isStar: true,
        ),
      ),
    );
  }
}
