import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/res/constant/app_string.dart';
import 'package:getx_practice/utils/routes/routes_name.dart';
import 'package:getx_practice/view/home_screen/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppString.homeScreen,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                "Count : ${controller.count}",
                style: const TextStyle(fontSize: 20),
              );
            }),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RoutesName.searchScreen);
              },
              child: Text(
                AppString.searchScreen,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
