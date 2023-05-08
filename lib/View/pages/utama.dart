import 'package:flutter/material.dart';
import 'package:project_flutter/View/pages/invitation/form1.dart';
import '../../Utils/global.colors.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';

class utamaPage extends StatefulWidget {
  const utamaPage({Key? key}) : super(key: key);

  @override
  State<utamaPage> createState() => _utamaPageState();
}

class _utamaPageState extends State<utamaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          alignment: Alignment.topLeft,
          child: Column(
              //agar tulisan tidak center
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Text(
                  'Hi, Aditya Firmansyah',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 4),
                Text(
                  'Bersiaplah untuk membuat undangan terbaikmu',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  'Overview',
                  style: TextStyle(
                      color: GlobalColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                InkWell(
                  child: Container(
                      height: 95,
                      decoration: const BoxDecoration(
                          border: DashedBorder.fromBorderSide(
                              side: BorderSide(), dashLength: 10)),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Center(child: Icon(Icons.add)),
                          ),
                          Container(
                            child: Center(
                              child: Text(
                                'Buat Undangan Baru',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      )),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return form();
                    }));
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
