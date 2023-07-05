import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/view/splash_screen/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FlutterLogo(
        style: FlutterLogoStyle.horizontal,
      ),
    );
  }
}
