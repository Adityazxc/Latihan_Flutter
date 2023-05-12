import 'package:flutter/material.dart';
import 'package:project_flutter/Utils/global.colors.dart';
import 'package:project_flutter/View/pages/invitation/form5.dart';
import 'package:project_flutter/View/widgets/time.form.global.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'form4.dart';
import '../../widgets/date.form.global.dart';
import '../../widgets/long.text.form.global.dart';
import '../../widgets/text.form.global.dart';

class formTiga extends StatefulWidget {
  formTiga({super.key});

  @override
  State<formTiga> createState() => _formTigaState();
}

class _formTigaState extends State<formTiga> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController mempelaiPriaController = TextEditingController();
  final TextEditingController mempelaiWanita = TextEditingController();
  final TextEditingController tanggalPernikahanController =
      TextEditingController();
  final TextEditingController lokasi = TextEditingController();
  final TextEditingController ceritaCinta = TextEditingController();
  final TextEditingController quote = TextEditingController();

  var _mempelaiPria, _tanggalPernikahan;
  @override
  void iniState() {
    super.initState();
    tanggalPernikahanController.addListener(_updateText);
  }

  void _updateText() {
    setState(() {
      // _mempelaiPria = mempelaiPriaController.text;
      _tanggalPernikahan = tanggalPernikahanController;
    });
  }

  @override
  Widget build(BuildContext context) {
    int selectedPlan = 0;

    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      Text(
                        'Langkah 3 dari 5',
                        style: TextStyle(
                            color: GlobalColors.textColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15),
                      StepProgressIndicator(
                        totalSteps: 5,
                        currentStep: 3,
                        selectedColor: GlobalColors.mainColor,
                        unselectedColor: GlobalColors.unselected,
                      ),
                      const SizedBox(height: 50),
                      Text(
                        'Data Mempelai ',
                        style: TextStyle(
                            color: GlobalColors.textColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.warning,
                              color: Colors.amber[400],
                            ),
                            Text(
                              'Semua data bisa diedit setelah pembayaran',
                              style: TextStyle(
                                  color: GlobalColors.textColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Nama Mempelai Pria ',
                        style: TextStyle(
                            color: GlobalColors.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 15),
                      TextFormGlobal(
                        controller: mempelaiPriaController,
                        text: 'Benno',
                        error: "Nama Mempelai Pria tidak boleh kosong",
                        obscure: false,
                        textInputType: TextInputType.text,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Nama Mempelai Wanita ',
                        style: TextStyle(
                            color: GlobalColors.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 15),
                      TextFormGlobal(
                        controller: mempelaiWanita,
                        error: "Nama Mempelai Wanita tidak boleh kosong",
                        text: 'Tyas',
                        obscure: false,
                        textInputType: TextInputType.text,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Tanggal Pernikahan ',
                        style: TextStyle(
                            color: GlobalColors.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 15),
                      DateFormGlobal(
                        datetimeinput: tanggalPernikahanController,
                        text: 'Masukkan tanggal acara',
                        obscure: false,
                        textInputType: TextInputType.text,
                      ),
                      const SizedBox(height: 15),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Jam Mulai ',
                              style: TextStyle(
                                  color: GlobalColors.textColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(width: 130),
                            Text(
                              'Jam Selesai ',
                              style: TextStyle(
                                  color: GlobalColors.textColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TimeFormGlobal(
                                text: "jam awal",
                                textInputType: TextInputType.text,
                                obscure: false),
                            //untuk memisahkan objek yang berdempetan
                            Expanded(child: Container()),
                            TimeFormGlobal(
                                text: "jam Akhir",
                                textInputType: TextInputType.text,
                                obscure: false),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Lokasi Pernikahan ',
                        style: TextStyle(
                            color: GlobalColors.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 15),
                      TextFormGlobal(
                        controller: lokasi,
                        text: 'benno-tyas',
                        error: "Lokasi tidak boleh kosong",
                        obscure: false,
                        textInputType: TextInputType.text,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Cerita Cinta ',
                        style: TextStyle(
                            color: GlobalColors.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 15),
                      LongTextFormGlobal(
                        controller: ceritaCinta,
                        maxCharacter: 250,
                        text: 'blablabla',
                        error: "Cerita Cinta tidak boleh kosong",
                        obscure: false,
                        textInputType: TextInputType.text,
                      ),
                      const SizedBox(height: 15),
                      const SizedBox(height: 15),
                      LongTextFormGlobal(
                        controller: quote,
                        text: 'quote',
                        error: "Quote tidak boleh kosong",
                        maxCharacter: 150,
                        obscure: false,
                        textInputType: TextInputType.text,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Quote ',
                        style: TextStyle(
                            color: GlobalColors.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 15),
                      TextFormGlobal(
                        controller: quote,
                        text: 'quote',
                        error: "Quote tidak boleh kosong",
                        obscure: false,
                        textInputType: TextInputType.text,
                      ),
                      const SizedBox(height: 70),
                    ],
                  ))),
        ),
        floatingActionButton: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
              FloatingActionButton(
                backgroundColor: GlobalColors.mainColor,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: GlobalColors.mainColor,
                ),
              ),
              Expanded(child: Container()),
              FloatingActionButton(
                backgroundColor: GlobalColors.mainColor,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return formLima(
                        tanggalPernikahan: tanggalPernikahanController.text,
                      );
                    }));
                  } else {}
                },
                child: Icon(Icons.keyboard_arrow_right),
              ),
            ])));
  }
}
