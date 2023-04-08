import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter/Utils/global.colors.dart';
import 'package:project_flutter/View/pages/invitation/form1.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      // Get.to(LoginView());
      Get.to(form());
    });
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: const Center(
        child: Text(
          'logo',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
