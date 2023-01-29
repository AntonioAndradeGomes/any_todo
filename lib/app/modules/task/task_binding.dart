import 'package:any_todo/app/modules/task/index.dart';
import 'package:get/get.dart';

class TaskBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskController>(
      () => TaskController(),
    );
  }
}
