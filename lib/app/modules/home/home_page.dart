import 'package:any_todo/core/theme/colors.dart';
import 'package:any_todo/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(
                                AppRoutes.PROFILE,
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      Theme.of(context).primaryColor,
                                  radius: 25,
                                  child: const Center(
                                    child: Text(
                                      'PN',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 18,
                                ),
                                const Flexible(
                                  child: Text(
                                    'Pessoa Nome',
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search_rounded,
                            color: Theme.of(context).primaryColor,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 25,
                      ),
                      children: [
                        Column(
                          children: [
                            ListTile(
                              onTap: () {},
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                'Meu dia',
                              ),
                              leading: Icon(
                                Icons.brightness_7,
                                color: AppColors.myDayColor,
                                size: 30,
                              ),
                            ),
                            ListTile(
                              onTap: () {},
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                'Importantes',
                              ),
                              leading: Icon(
                                Icons.star,
                                color: AppColors.importantColor,
                                size: 30,
                              ),
                              trailing: const Text(
                                '5',
                              ),
                            ),
                            ListTile(
                              onTap: () {},
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                'Todas',
                              ),
                              leading: Icon(
                                FontAwesomeIcons.upDown,
                                color: Theme.of(context).primaryColor,
                              ),
                              trailing: const Text(
                                '5',
                              ),
                            ),
                            ListTile(
                              onTap: () {},
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                'Concluídas',
                              ),
                              leading: Icon(
                                Icons.check_circle,
                                size: 30,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            ListTile(
                              onTap: () {},
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                'Planejadas',
                              ),
                              leading: Icon(
                                Icons.calendar_month,
                                size: 30,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            ListTile(
                              onTap: () {},
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                'Tarefas',
                              ),
                              leading: Icon(
                                Icons.home,
                                size: 30,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            const Divider(),
                          ],
                        ),
                        Column(
                          children: [
                            ListTile(
                              onTap: () {
                                Get.toNamed(
                                  AppRoutes.LIST,
                                );
                              },
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                'Lista 1',
                              ),
                              trailing: const Text(
                                '5',
                              ),
                              leading: Icon(
                                Icons.list,
                                size: 30,
                                color: AppColors.listTasksColor[0],
                              ),
                            ),
                            ListTile(
                              onTap: () {},
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              trailing: const Text(
                                '5',
                              ),
                              title: const Text(
                                'Lista 2',
                              ),
                              leading: Icon(
                                Icons.list,
                                size: 30,
                                color: AppColors.listTasksColor[1],
                              ),
                            ),
                            ListTile(
                              onTap: () {},
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                'Lista 3',
                              ),
                              leading: Icon(
                                Icons.list,
                                size: 30,
                                color: AppColors.listTasksColor[2],
                              ),
                            ),
                            ListTile(
                              onTap: () {},
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                'Lista 4',
                              ),
                              leading: Icon(
                                Icons.list,
                                size: 30,
                                color: AppColors.listTasksColor[3],
                              ),
                            ),
                            ListTile(
                              onTap: () {},
                              dense: true,
                              trailing: const Text(
                                '5',
                              ),
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                'Lista 5',
                              ),
                              leading: Icon(
                                Icons.list,
                                size: 30,
                                color: AppColors.listTasksColor[4],
                              ),
                            ),
                            ListTile(
                              onTap: () {},
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                'Lista 6',
                              ),
                              leading: Icon(
                                Icons.list,
                                size: 30,
                                color: AppColors.listTasksColor[5],
                              ),
                            ),
                            ListTile(
                              onTap: () {},
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                'Lista 7',
                              ),
                              leading: Icon(
                                Icons.list,
                                size: 30,
                                color: AppColors.listTasksColor[6],
                              ),
                            ),
                            ListTile(
                              onTap: () {},
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                'Lista 8',
                              ),
                              leading: Icon(
                                Icons.list,
                                size: 30,
                                color: AppColors.listTasksColor[7],
                              ),
                            ),
                            ListTile(
                              onTap: () {},
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                'Lista 10',
                              ),
                              leading: Icon(
                                Icons.list,
                                size: 30,
                                color: AppColors.listTasksColor[1],
                              ),
                            ),
                            ListTile(
                              onTap: () {},
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                'Lista 11',
                              ),
                              leading: Icon(
                                Icons.list,
                                size: 30,
                                color: AppColors.listTasksColor[0],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
              child: ListTile(
                onTap: () {},
                dense: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                title: const Text(
                  'Adicionar nova lista',
                ),
                leading: const Icon(
                  Icons.post_add_outlined,
                  size: 25,
                  //color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
