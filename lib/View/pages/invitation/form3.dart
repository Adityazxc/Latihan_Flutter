import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project_flutter/Utils/global.colors.dart';

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
  final TextEditingController mempelaiPria = TextEditingController();
  final TextEditingController mempelaiWanita = TextEditingController();
  final TextEditingController waktuAkad = TextEditingController();
  final TextEditingController lokasi = TextEditingController();
  final TextEditingController ceritaCinta = TextEditingController();
  final TextEditingController quote = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                            Icon(Icons.warning),
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
                        controller: mempelaiPria,
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
                        controller: waktuAkad,
                        text: 'Masukkan tanggal acara',
                        obscure: false,
                        textInputType: TextInputType.text,
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
                        text: 'blablabla',
                        error: "Cerita Cinta tidak boleh kosong",
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
                      LongTextFormGlobal(
                        controller: quote,
                        text: 'quote',
                        error: "Quote tidak boleh kosong",
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
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Icon(Icons.keyboard_arrow_left),
              ),
              Expanded(child: Container()),
              FloatingActionButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return formTiga();
                    }));
                  } else {}
                },
                child: Icon(Icons.keyboard_arrow_right),
              ),
            ])));
  }
}
