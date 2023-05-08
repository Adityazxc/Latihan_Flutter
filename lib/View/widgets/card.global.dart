import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project_flutter/View/widgets/text.header.package.global.dart';
import 'package:project_flutter/View/widgets/text.list.plan.global.dart';

import '../../Utils/global.colors.dart';

class CardGlobal extends StatefulWidget {
  CardGlobal({
    super.key,
    // required this.isiText,
  });

  final List<Map<String, dynamic>> isiText = [];
  @override
  State<CardGlobal> createState() => _CardGlobalState();
}

class _CardGlobalState extends State<CardGlobal> {
  int selectedPlan = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            selectedPlan = 2;
          });
        },
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          side: BorderSide(
              width: (selectedPlan == 2) ? 2.0 : 0.5,
              color: GlobalColors.mainColor),
        ),
        child: Stack(
          children: [
            ///paket 1
            Container(
              width: 250,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 7,
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const TextHeaderPackage(
                  //     titleText: "Rp 50.000",
                  //     planText: 'Basic Plan',
                  //     taglineText: 'Undangan Tanpa Ribet !'),
                  // const SizedBox(height: 10),

                  // for (var i = 0; i < isiText.length; i++)
                  //   // TextListPlanGlobal(textList: '$isiText[$i]'),
                  //   Container(child: Text('$isiText[$i]'))
                ],
              ),
            ),

            if (selectedPlan == 2)
              const Positioned(
                top: 5,
                right: 5,
                child: Icon(
                  Icons.check_circle_outline_sharp,
                ),
              )
          ],
        ),
      ),
    );
  }
}
