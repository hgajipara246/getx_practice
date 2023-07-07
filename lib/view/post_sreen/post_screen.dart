import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/res/constant/app_string.dart';
import 'package:getx_practice/utils/routes/routes_name.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          AppString.postScreen,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.offNamed(RoutesName.homeScreen);
              },
              child: const Text(
                "Back To Home Screen",
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Get.offNamed(RoutesName.searchScreen);
              },
              child: const Text(
                "Back To Search Screen",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
