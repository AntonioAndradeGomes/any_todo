import 'package:any_todo/app/modules/signin/index.dart';
import 'package:any_todo/app/modules/splash/index.dart';
import 'package:any_todo/app/modules/home/index.dart';
import 'package:any_todo/app/modules/task/index.dart';
import 'package:any_todo/app/modules/profile/index.dart';
import 'package:any_todo/app/modules/list/index.dart';
import 'package:any_todo/routes/app_routes.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static String initialRoute = AppRoutes.SPLASH;

  static List<GetPage> pages = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.SIGNIN,
      page: () => const SigninPage(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.LIST,
      page: () => const ListPage(),
      binding: ListBinding(),
    ),
    GetPage(
      name: AppRoutes.PROFILE,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: AppRoutes.TASK,
      page: () => const TaskPage(),
      binding: TaskBinding(),
    ),
  ];
}
