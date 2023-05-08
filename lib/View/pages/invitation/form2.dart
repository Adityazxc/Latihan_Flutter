import 'package:flutter/material.dart';
import 'package:project_flutter/View/pages/home.dart';
import 'package:project_flutter/View/widgets/card.global.dart';
import 'package:project_flutter/View/widgets/text.header.package.global.dart';
import 'package:project_flutter/View/widgets/text.list.plan.global.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../../../Utils/global.colors.dart';
import 'form3.dart';

class formdua extends StatefulWidget {
  const formdua({super.key});

  @override
  State<formdua> createState() => _formduaState();
}

class _formduaState extends State<formdua> {
  int selectedPlan = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.all(15.0),
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              InkWell(
                  child: Container(
                    child: Icon(
                      Icons.close,
                      size: 50,
                      color: GlobalColors.unselected,
                    ),
                  ),
                  onTap: () async {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const HomePage();
                    }));
                  }),
              const SizedBox(height: 20),
              Text(
                'Langkah 2 dari 5 ',
                style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              StepProgressIndicator(
                totalSteps: 5,
                currentStep: 2,
                selectedColor: GlobalColors.mainColor,
                unselectedColor: GlobalColors.unselected,
              ),
              const SizedBox(height: 50),
              Center(
                  child: Text(
                'Pilih Paket ',
                style: TextStyle(
                    color: GlobalColors.maintext,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              )),
              const SizedBox(height: 10),
              Center(
                  child: Text(
                'Pilih Paket Untuk undangan mu! ',
                style: TextStyle(
                    color: GlobalColors.unselected,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          selectedPlan = 1;
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 1, vertical: 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        side: BorderSide(
                            width: (selectedPlan == 1) ? 2.0 : 0.0,
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
                                const TextHeaderPackage(
                                    titleText: "Rp 50.000",
                                    planText: 'Basic Plan',
                                    taglineText: 'Undangan Tanpa Ribet !'),
                                const SizedBox(height: 10),
                                TextListPlanGlobal(
                                    textList: '3 Bulan Masa Aktif'),
                                TextListPlanGlobal(textList: '10 Item Gallery'),
                                TextListPlanGlobal(textList: 'WA Manual'),
                              ],
                            ),
                          ),

                          if (selectedPlan == 1)
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
                    const SizedBox(width: 15),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          selectedPlan = 2;
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        side: BorderSide(
                            width: (selectedPlan == 2) ? 2.0 : 0.5,
                            color: GlobalColors.mainColor),
                      ),
                      child: Stack(
                        children: [
                          ///paket 2
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
                                const TextHeaderPackage(
                                    titleText: "Rp 100.000",
                                    planText: 'Premium Plan',
                                    taglineText: 'Undangan lengkap !'),
                                const SizedBox(height: 10),
                                TextListPlanGlobal(
                                    textList: '6 Bulan Masa Aktif'),
                                TextListPlanGlobal(textList: '20 Item Gallery'),
                                TextListPlanGlobal(textList: 'Fitur RSVP'),
                                TextListPlanGlobal(textList: 'Fitur Ucapan'),
                                TextListPlanGlobal(textList: '200 WA Otomatis'),
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
                    const SizedBox(width: 15),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          selectedPlan = 3;
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        side: BorderSide(
                            width: (selectedPlan == 3) ? 2.0 : 0.5,
                            color: GlobalColors.mainColor),
                      ),
                      child: Stack(
                        children: [
                          ///paket 3
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
                                const TextHeaderPackage(
                                    titleText: "Rp 50.000",
                                    planText: 'Basic Plan',
                                    taglineText: 'Undangan Tanpa Ribet !'),
                                const SizedBox(height: 10),
                                TextListPlanGlobal(
                                    textList: '3 Bulan Masa Aktif'),
                                TextListPlanGlobal(textList: '10 Item Gallery'),
                                TextListPlanGlobal(textList: 'WA Manual'),
                              ],
                            ),
                          ),

                          if (selectedPlan == 3)
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
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                child: Row(children: [
                  Icon(Icons.warning_amber, color: Colors.yellow),
                  const SizedBox(width: 10),
                  Text(
                    'Paket Masih bisa di upgrade setelah pembayaran ',
                    style: TextStyle(
                        color: GlobalColors.unselected,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ]),
              ),
            ],
          )),
        ),
        floatingActionButton: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
              FloatingActionButton(
                backgroundColor: GlobalColors.mainColor,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Icon(Icons.keyboard_arrow_left),
              ),
              Expanded(child: Container()),
              FloatingActionButton(
                backgroundColor: GlobalColors.mainColor,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return formTiga();
                  }));
                },
                child: Icon(Icons.keyboard_arrow_right),
              ),
            ])));
  }
}
