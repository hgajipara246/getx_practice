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
            // Obx(() {
            //   return Text(
            //     "Count : ${controller.count}",
            //     style: const TextStyle(fontSize: 20),
            //   );
            // }),
            // ElevatedButton(
            //   onPressed: () {
            //     Get.toNamed(RoutesName.searchScreen);
            //   },
            //   child: const Text(
            //     AppString.searchScreen,
            //   ),
            // ),
            GetBuilder<HomeController>(
              init: Get.put(HomeController()), // Add Get.put to pass the RoomController instance
              builder: (controller) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton<String>(
                      value: controller.selectedRoom.value,
                      onChanged: (String? newValue) {
                        controller.selectedRoom.value = newValue!;
                      },
                      items: <String>['Room 1', 'Room 2', 'Room 3', 'Room 4'].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(RoutesName.searchScreen, arguments: controller.selectedRoom.value);
                      },
                      child: Text('Submit'),
                    ),
                  ],
                );
              },
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
