import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Get2"),
      ),
      body: Obx(
        () => Column(
          children: [
            Text(
              controller.counter.toString(),
            ),
            ElevatedButton(
                onPressed: () {
                  controller.decrement();
                },
                child: const Icon(Icons.remove))
          ],
        ),
      ),
    );
  }
}
