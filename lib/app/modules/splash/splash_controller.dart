import 'package:any_todo/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  Future<void> toPage() async {
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
    Get.offNamed(
      AppRoutes.SIGNIN,
    );
  }
}
