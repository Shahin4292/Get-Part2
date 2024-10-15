import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_part_2/controller/controller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("object");
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
