import 'package:any_todo/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../list_controller.dart';

class NewTaskWidget extends StatefulWidget {
  const NewTaskWidget({Key? key}) : super(key: key);

  @override
  State<NewTaskWidget> createState() => _NewTaskWidgetState();
}

class _NewTaskWidgetState extends State<NewTaskWidget> {
  //todo: melhorar e fazer o processo de adicionar na lista
  DateTime? dataLembrar;
  DateTime? dataConcluir;
  final _controller = Get.find<ListController>();
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 25,
              right: 25,
              bottom: 10,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Adicione uma tarefa',
                      isDense: true,
                      icon: Icon(
                        Icons.circle_outlined,
                        color: AppColors.greyColor,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
            // color: Colors.blue,
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              scrollDirection: Axis.horizontal,
              children: [
                dataLembrar == null
                    ? IconButton(
                        onPressed: () async {
                          final date = await pickDate();
                          if (date != null) {
                            final temp = await pickTime();
                            final newDateTime = DateTime(
                              date.year,
                              date.month,
                              date.day,
                              temp?.hour ?? 0,
                              temp?.minute ?? 0,
                            );
                            setState(() {
                              dataLembrar = newDateTime;
                            });
                          }
                        },
                        icon: const Icon(
                          Icons.notifications,
                          color: Colors.black,
                        ),
                        tooltip: 'Lembrete',
                      )
                    : Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: _controller.listColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.notifications_active_outlined,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lembre-me à(s) ${dataLembrar!.hour}:${dataLembrar!.minute}',
                                ),
                                Text(
                                    '${dataLembrar!.day}/${dataLembrar!.month}/${dataLembrar!.year}')
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  dataLembrar = null;
                                });
                              },
                              child: const Icon(
                                Icons.close,
                              ),
                            ),
                          ],
                        ),
                      ),
                const SizedBox(
                  width: 5,
                ),
                dataConcluir == null
                    ? IconButton(
                        onPressed: () async {
                          final date = await pickDate();
                          if (date != null) {
                            final temp = await pickTime();
                            final newDateTime = DateTime(
                              date.year,
                              date.month,
                              date.day,
                              temp?.hour ?? 0,
                              temp?.minute ?? 0,
                            );
                            setState(() {
                              dataConcluir = newDateTime;
                            });
                          }
                        },
                        icon: const Icon(
                          Icons.calendar_month,
                          color: Colors.black,
                        ),
                        tooltip: 'Conclusão',
                      )
                    : Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: _controller.listColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.calendar_month,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Concluir à(s) ${dataConcluir!.hour}:${dataConcluir!.minute}',
                                ),
                                Text(
                                    '${dataConcluir!.day}/${dataConcluir!.month}/${dataConcluir!.year}')
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  dataConcluir = null;
                                });
                              },
                              child: const Icon(
                                Icons.close,
                              ),
                            ),
                          ],
                        ),
                      ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Future<DateTime?> pickDate() async {
    return await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
  }

  Future<TimeOfDay?> pickTime() async {
    return await showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 00, minute: 00),
    );
  }
}
