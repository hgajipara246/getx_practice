import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/res/constant/app_string.dart';
import 'package:getx_practice/utils/routes/routes_name.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SearchScreen extends GetView<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedRoom = Get.arguments as String? ?? '';

    TextEditingController adultsController = TextEditingController();
    TextEditingController childrenController = TextEditingController();

    void saveFormDataToPreferences() async {
      final prefs = await SharedPreferences.getInstance();
      final adultsData = adultsController.text;
      final childrenData = childrenController.text;

      await prefs.setString('adultsData', adultsData);
      await prefs.setString('childrenData', childrenData);
    }

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
            Text(
              'Selected Room: $selectedRoom',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 15),
            const SizedBox(height: 15),
            TextField(
              controller: adultsController,
              decoration: const InputDecoration(
                labelText: 'Number of Adults',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: childrenController,
              decoration: const InputDecoration(
                labelText: 'Number of Children',
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                saveFormDataToPreferences();
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
