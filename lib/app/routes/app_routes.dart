import 'package:get/get.dart';
import 'package:get_part_2/app/module/home/view/home_view.dart';

import '../module/home/binding/home_binding.dart';

class AppRoutes {
  static final String initialRoutes = '/home';

  static final routes = [
    GetPage(name: '/home', page: () => const HomeView(), binding: HomeBinding())
  ];
}
