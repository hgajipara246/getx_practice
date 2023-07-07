import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/res/constant/app_string.dart';

class SearchScreen extends GetView<SearchController> {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.searchScreen),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                "Back To Home Screen",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
