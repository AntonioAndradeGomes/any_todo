import 'package:any_todo/app/modules/list/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditListNameWidget extends StatefulWidget {
  const EditListNameWidget({Key? key}) : super(key: key);

  @override
  State<EditListNameWidget> createState() => _EditListNameWidgetState();
}

class _EditListNameWidgetState extends State<EditListNameWidget> {
  final _controller = Get.find<ListController>();
  final _key = GlobalKey<FormState>();

  late TextEditingController textcontroller;

  @override
  void initState() {
    textcontroller = TextEditingController(
      text: _controller.list.name,
    );
    super.initState();
  }

  @override
  void dispose() {
    textcontroller.dispose();
    super.dispose();
  }

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
      child: Form(
        key: _key,
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 25,
              ),
              child: TextFormField(
                controller: textcontroller,
                cursorColor: _controller.listColor,
                decoration: InputDecoration(
                  isDense: true,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: _controller.listColor,
                    ),
                  ),
                ),
                autovalidateMode: AutovalidateMode.always,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Dê um nome a lista';
                  }
                  return null;
                },
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: _controller.listColor,
              ),
              onPressed: () {
                if (_key.currentState!.validate()) {
                  _controller.changeNameList(textcontroller.text);
                  Get.back();
                }
              },
              child: const Text('Salvar'),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
