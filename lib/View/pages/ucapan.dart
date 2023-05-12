import 'package:flutter/material.dart';
import 'package:profile/profile.dart';
import 'package:project_flutter/View/widgets/button/button.global.dart';

import '../../Utils/global.colors.dart';

class ucapanPage extends StatefulWidget {
  const ucapanPage({Key? key}) : super(key: key);

  @override
  State<ucapanPage> createState() => _ucapanPageState();
}

class _ucapanPageState extends State<ucapanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 30),
          alignment: Alignment.topLeft,
          child: Column(
              //agar tulisan tidak center
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Text(
                  'Buku Tamu',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 4),
                Text(
                  'Halo, Selamat Atas Pernikahaannya',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  '20 Maret 2023 17:31',
                  style: TextStyle(
                      color: GlobalColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
      ),
    );
  }
}
