import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/res/constant/app_assets.dart';
import 'package:getx_practice/view/splash_screen/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.splashScreen,
              width: Get.width / 1.5,
            ),
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [
                  Color(0xFF9524F3),
                  Color(0xffBA91DA),
                  Color(0xFFA44BEC),
                  Color(0xFFE764F3),
                  Color(0xFFD896F6),
                ],
              ).createShader(bounds),
              child: const Text(
                "GetX",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
