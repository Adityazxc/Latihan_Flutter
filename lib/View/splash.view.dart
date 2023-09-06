import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter/View/pages/invitation/form4.dart';
// import 'package:project_flutter/Utils/global.colors.dart';
// import 'package:project_flutter/View/pages/invitation/form1.dart';
// import 'package:project_flutter/View/pages/invitation/form2.dart';
// import 'package:project_flutter/View/pages/invitation/form3.dart';
// import 'package:project_flutter/View/pages/profile.dart';
import 'package:project_flutter/View/signup.dart';

// import 'login.view.dart';
import 'pages/invitation/form4.dart';
// import 'pages/invitation/form5.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      Get.to(formEmpat());

      // Get.to(formTiga());

      // Get.to(AdminPage());
    });
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/logo_galakita.png')),
          SizedBox(
            height: 15,
          ),
          Text('The Invitation is all yours'),
        ],
      )),
    );
  }
}
