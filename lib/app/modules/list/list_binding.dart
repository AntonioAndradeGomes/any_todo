import 'package:any_todo/app/modules/list/index.dart';
import 'package:get/get.dart';

class ListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListController>(
      () => ListController(),
    );
  }
}
