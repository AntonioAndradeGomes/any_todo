import 'package:any_todo/app/modules/profile/profile_controller.dart';
import 'package:any_todo/app/modules/profile/widgets/tap_drop_widget.dart';
import 'package:any_todo/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  final _controller = Get.find<ProfileController>();
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Theme.of(context).primaryColor,
          splashRadius: 20,
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
          onPressed: () {},
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          children: [
            Center(
              child: Stack(
                children: [
                  GetBuilder<ProfileController>(
                    builder: (controller) {
                      if (controller.user.urlImage != null) {
                        return Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                controller.user.urlImage!,
                              ),
                            ),
                          ),
                        );
                      }

                      return CircleAvatar(
                        radius: 60,
                        child: Center(
                          child: Text(
                            controller.user.initials,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    bottom: -5,
                    right: -5,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(20, 20),
                        shape: const CircleBorder(),
                      ),
                      onPressed: () {},
                      child: const Icon(
                        Icons.edit,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _controller.nameTextController,
              decoration: const InputDecoration(
                isDense: true,
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              readOnly: true,
              initialValue: _controller.user.email,
              decoration: const InputDecoration(
                isDense: true,
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TapDrop(
              title: 'Tema',
              value: 'Usar do sistema',
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            const TapDrop(
              title: 'Provedor',
              value: 'Google',
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 40,
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.orangeColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Sair',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 40,
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.orangeColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Apagar minha conta',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
