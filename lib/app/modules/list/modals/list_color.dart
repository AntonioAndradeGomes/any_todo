import 'package:any_todo/app/modules/list/index.dart';
import 'package:any_todo/app/modules/list/widgets/select_color.dart';
import 'package:any_todo/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListColorsWidget extends StatelessWidget {
  const ListColorsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Selecione uma cor para Lista',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: GetBuilder<ListController>(
              builder: (controller) => Wrap(
                alignment: WrapAlignment.center,
                children: AppColors.listTasksColor
                    .map(
                      (e) => SelectColor(
                        color: e,
                        isSelect: controller.listColor == e,
                        onTap: () {
                          controller.changeColorList(e);
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
