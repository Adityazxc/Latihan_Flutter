import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter/View/splash.view.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

//login

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }

  // @override
  // Widget build(BuildContext context){
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: HomePage(),
  //   );
  // }
}
