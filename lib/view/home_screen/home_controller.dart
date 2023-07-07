import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt count = 0.obs;
  increment() {
    count++;
    debugPrint("count is : $count");
  }
}
