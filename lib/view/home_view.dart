import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_part_2/controller/controller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final dependency = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("object");
          dependency.increment();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Get2"),
      ),
      body: Column(
        children: [
          GetX<CountController>(
            builder: (controller) {
              return Center(
                child: Text(
                  controller.counter.toString(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
