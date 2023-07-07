import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/res/constant/app_string.dart';
import 'package:getx_practice/utils/routes/routes_name.dart';

class SearchScreen extends GetView<SearchController> {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.searchScreen),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text(
                "Back To Home Screen",
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Get.offNamed(RoutesName.postScreen);
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Replace Screen",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
