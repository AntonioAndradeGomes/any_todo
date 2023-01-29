import 'package:any_todo/app/modules/signin/signin_controller.dart';
import 'package:get/get.dart';

class SigninBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SigninController>(
      () => SigninController(),
    );
  }
}
