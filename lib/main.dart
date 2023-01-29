import 'package:any_todo/core/theme/theme.dart';
import 'package:any_todo/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AnyTodo',
      theme: appTheme,
      darkTheme: darkTheme,
      getPages: AppPages.pages,
      initialRoute: AppPages.initialRoute,
    );
  }
}
