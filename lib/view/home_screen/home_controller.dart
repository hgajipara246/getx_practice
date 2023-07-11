import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  var selectedRoom = 'Room 1'.obs;
  void saveSelectedRoom(String room) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedRoom', room);
  }

  RxInt count = 0.obs;
  increment() {
    count++;
    debugPrint("count is : $count");
  }
}
