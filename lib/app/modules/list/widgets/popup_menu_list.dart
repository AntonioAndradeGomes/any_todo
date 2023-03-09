import 'package:any_todo/app/modules/list/modals/edit_list_name.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../modals/list_color.dart';

class PopupMenuListWidget extends StatelessWidget {
  const PopupMenuListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Colors.white,
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Row(
            children: const [
              Icon(
                FontAwesomeIcons.palette,
                color: Colors.black,
                size: 15,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Mudar a cor da lista',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Row(
            children: const [
              Icon(
                FontAwesomeIcons.signature,
                color: Colors.black,
                size: 15,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Renomear lista',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          value: 3,
          child: Row(
            children: const [
              Icon(
                FontAwesomeIcons.trash,
                color: Colors.red,
                size: 15,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Excluir lista',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ],
      onSelected: (value) {
        if (value == 1) {
          Get.bottomSheet(
            const ListColorsWidget(),
          );
        } else if (value == 2) {
          Get.bottomSheet(
            const EditListNameWidget(),
          );
        } else if (value == 3) {
        } else {
          return;
        }
      },
    );
  }
}
