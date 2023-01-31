import 'package:any_todo/app/modules/list/models/list_model.dart';
import 'package:any_todo/app/modules/list/models/task_model.dart';
import 'package:any_todo/core/theme/colors.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ListController extends GetxController {
  ListModel list = ListModel(
    id: 'aaaaa',
    name: 'Lista 1',
    color: AppColors.greenPollColor,
  );

  Color get listColor => list.color;

  Rx<bool> showCompleted = true.obs;

  TextEditingController textController = TextEditingController();

  RxList<TaskModel> listTask = <TaskModel>[
    TaskModel(
      title: 'Loren bdakcv basjekjs  abcskjasb anan ascaahslcb',
      isImportant: true,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    TaskModel(
      title: 'Loren bdakcv basjekjs  abcskjasb anan ascaahslcb',
      isImportant: false,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    TaskModel(
      title: 'Loren bdakcv basjekjs  abcskjasb anan ascaahslcb',
      isImportant: false,
      endDate: DateTime.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    TaskModel(
      title: 'Loren bdakcv basjekjs  abcskjasb anan ascaahslcb',
      isImportant: true,
      endDate: DateTime.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
  ].obs;

  List<TaskModel> get unfinishedList =>
      listTask.where((element) => element.endDate == null).toList();
  List<TaskModel> get finishedList =>
      listTask.where((element) => element.endDate != null).toList();

  void changeShowCompleted() {
    showCompleted.value = !showCompleted.value;
  }

  void changeColorList(Color value) {
    list.color = value;
    update();
  }
}
