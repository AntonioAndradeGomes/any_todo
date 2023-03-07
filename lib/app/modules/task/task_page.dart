import 'package:any_todo/app/modules/task/index.dart';
import 'package:any_todo/core/theme/colors.dart';
import 'package:any_todo/core/widgets/circle_button_task_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class TaskPage extends StatelessWidget {
  final _controller = Get.find<TaskController>();
  TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameList = Get.arguments['nameList'];
    final colorList = Get.arguments['color'];
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          const Text(
            'Criado em: 03/02/2023',
          ),
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: Icon(
              FontAwesomeIcons.trash,
              color: AppColors.greyColor,
            ),
          ),
        ],
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: colorList,
          ),
          splashRadius: 25,
          onPressed: () => Get.back(),
        ),
        title: Text(
          nameList,
          style: TextStyle(
            color: colorList,
          ),
        ),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: colorList,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 20,
          ),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleButtonTaskWidget(
                  active: _controller.task.endDate != null,
                  colorActive: colorList,
                  colorInactive: AppColors.greyColor,
                  onPressed: () {},
                ),
                Expanded(
                  child: Text(
                    _controller.task.title,
                  ),
                ),
                CircleButtonTaskWidget(
                  active: _controller.task.isImportant,
                  colorActive: AppColors.importantColor,
                  colorInactive: AppColors.greyColor,
                  onPressed: () {},
                  isStar: true,
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton.icon(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: colorList,
                ),
                icon: const Icon(
                  Icons.add,
                ),
                label: const Text(
                  'Adicionar uma etapa',
                ),
              ),
            ),
            Material(
              borderRadius: BorderRadius.circular(25),
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(25),
                onTap: () {},
                child: Ink(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      width: 1,
                      color: AppColors.greyColor.withAlpha(100),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Icon(
                          Icons.notification_add_rounded,
                          color: AppColors.greyColor,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Lembrar-me',
                          style: TextStyle(
                            color: AppColors.greyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Material(
              borderRadius: BorderRadius.circular(25),
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(25),
                onTap: () {},
                child: Ink(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      width: 1,
                      color: AppColors.greyColor.withAlpha(100),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_month_rounded,
                          color: AppColors.greyColor,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Adicionar data de conclusão',
                          style: TextStyle(
                            color: AppColors.greyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Material(
              borderRadius: BorderRadius.circular(25),
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(25),
                onTap: () {},
                child: Ink(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      width: 1,
                      color: AppColors.greyColor.withAlpha(100),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Icon(
                          Icons.text_snippet_rounded,
                          color: AppColors.greyColor,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Adicionar uma anotação',
                          style: TextStyle(
                            color: AppColors.greyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
