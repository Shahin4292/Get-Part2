import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_part_2/app/module/home/view/home_view.dart';
import 'package:get_part_2/app/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.initialRoutes,
      getPages: AppRoutes.routes,
    );
  }
}
