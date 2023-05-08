import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../../../Utils/global.colors.dart';
import '../home.dart';
import 'form4.dart';

class formLima extends StatelessWidget {
  formLima({
    super.key,
    required this.tanggalPernikahan,
    // required this.mempelaiPria,
  });

  String tanggalPernikahan;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(15.0),
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
                        'Langkah 5 dari 5 ',
                        style: TextStyle(
                            color: GlobalColors.textColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15),
                      StepProgressIndicator(
                        totalSteps: 5,
                        currentStep: 5,
                        selectedColor: GlobalColors.mainColor,
                        unselectedColor: GlobalColors.unselected,
                      ),
                      const SizedBox(height: 50),
                      Text(
                        'Pembayaran ',
                        style: TextStyle(
                            color: GlobalColors.maintext,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 15),
                      Center(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 7,
                                )
                              ]),
                          child: Column(
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/thumbanail.png'),
                                      const SizedBox(height: 15),
                                      Container(
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Pernikahan Tyas",
                                                style: TextStyle(
                                                    color:
                                                        GlobalColors.maintext,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              const SizedBox(height: 10),
                                              Container(
                                                width: 200,
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.location_on),
                                                    const SizedBox(width: 10),
                                                    Text(
                                                      "Jl, Dipatiukur no 10",
                                                      style: TextStyle(
                                                          color: GlobalColors
                                                              .unselected,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              Container(
                                                width: 200,
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.calendar_month),
                                                    const SizedBox(width: 10),
                                                    Text(
                                                      tanggalPernikahan,
                                                      style: TextStyle(
                                                          color: GlobalColors
                                                              .unselected,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              Container(
                                                width: 200,
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.calendar_month),
                                                    const SizedBox(width: 10),
                                                    Text(
                                                      tanggalPernikahan,
                                                      style: TextStyle(
                                                          color: GlobalColors
                                                              .unselected,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                            ],
                                          )),
                                      const SizedBox(height: 20),
                                      ElevatedButton.icon(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            primary: GlobalColors.mainColor),
                                        label: Text('Preview'),
                                        icon: Icon(
                                          Icons.remove_red_eye,
                                        ),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: const Divider(
                          color: Colors.black,
                          height: 10,
                          thickness: 2,
                        ),
                      ),
                      Text(
                        'Paket',
                        style: TextStyle(
                            fontSize: 18,
                            color: GlobalColors.mainColor,
                            fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Paket Basic',
                            style: TextStyle(
                                fontSize: 18,
                                color: GlobalColors.maintext,
                                fontWeight: FontWeight.w400),
                          ),
                          Expanded(child: Container()),
                          Text(
                            'Rp 50.000',
                            style: TextStyle(
                                fontSize: 18,
                                color: GlobalColors.maintext,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                                fontSize: 23,
                                color: GlobalColors.maintext,
                                fontWeight: FontWeight.w600),
                          ),
                          Expanded(child: Container()),
                          Text(
                            tanggalPernikahan,
                            style: TextStyle(
                                fontSize: 23,
                                color: GlobalColors.maintext,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const SizedBox(height: 100),
                    ]))),
        floatingActionButton: Padding(
            padding: EdgeInsets.only(left: 30),
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
                  if (formKey.currentState!.validate()) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return formEmpat();
                    }));
                  } else {}
                },
                child: Icon(Icons.keyboard_arrow_right),
              ),
            ])));
  }
}
