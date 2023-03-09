import 'package:any_todo/app/modules/list/index.dart';
import 'package:any_todo/app/modules/list/modals/new_task_widget.dart';
import 'package:any_todo/app/modules/list/widgets/bottom_button.dart';
import 'package:any_todo/app/modules/list/widgets/card_task.dart';
import 'package:any_todo/app/modules/list/widgets/show_completed_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/popup_menu_list.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final blackTheme = Theme.of(context).brightness == Brightness.dark;

    return GetBuilder<ListController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
            ),
            splashRadius: 20,
          ),
          actions: const [
            PopupMenuListWidget(),
          ],
        ),
        backgroundColor: blackTheme ? Colors.black : controller.listColor,
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.list.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          colorScheme: ColorScheme.fromSwatch().copyWith(
                            secondary: controller.listColor,
                          ),
                        ),
                        child: ListView(
                          children: [
                            Column(
                              children: controller.unfinishedList
                                  .map(
                                    (e) => CardTask(
                                      task: e,
                                      list: controller.list,
                                    ),
                                  )
                                  .toList(),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            ShowCompletedWidget(
                              onTap: () {
                                controller.changeShowCompleted();
                              },
                              showCompleted: controller.showCompleted.value,
                            ),
                            controller.showCompleted.value
                                ? Column(
                                    children: controller.finishedList
                                        .map(
                                          (e) => CardTask(
                                            task: e,
                                            list: controller.list,
                                          ),
                                        )
                                        .toList(),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              color: blackTheme ? Colors.black : controller.listColor,
              child: Center(
                child: BottomButtonWidget(
                  onTap: () {
                    Get.bottomSheet(
                      const NewTaskWidget(),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
