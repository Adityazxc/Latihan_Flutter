import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter/View/pages/profile.dart';
import 'package:project_flutter/View/pages/ucapan.dart';
import 'package:project_flutter/View/pages/utama.dart';

import '../../Utils/global.colors.dart';
import '../../theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      Center(
        child: Text("Menu Ke 1"),
      ),
      ucapanPage(),
      utamaPage(),
      Center(
        child: Text("Menu Ke 4"),
      ),
      AdminPage(),
    ];

    return Scaffold(
        body: widgets[currentIndex],
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: GlobalColors.mainColor,
          items: [
            TabItem(icon: Icons.send_sharp, title: 'Sebar'),
            TabItem(icon: Icons.message, title: 'Ucapan'),
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.rocket, title: 'Paket'),
            TabItem(icon: Icons.person, title: 'Profile'),
          ],
          initialActiveIndex: 2,
          onTap: (int i) {
            setState(() {
              currentIndex = i;
            });
          },
        ));
  }
}
