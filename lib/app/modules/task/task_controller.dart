import 'package:any_todo/app/modules/list/models/task_model.dart';
import 'package:get/get.dart';

class TaskController extends GetxController {
  final TaskModel task = Get.arguments['task'];
}
