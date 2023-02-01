import 'package:any_todo/app/modules/profile/models/user_model.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final user = UserModel(
    name: 'Antonio Andrade',
    email: 'email@email.com',
    urlImage:
        'https://files.tecnoblog.net/wp-content/uploads/2022/07/windows-11-4-1060x596.png',
  );

  late TextEditingController nameTextController;

  @override
  void onInit() {
    super.onInit();
    nameTextController = TextEditingController(
      text: user.name,
    );
  }
}
