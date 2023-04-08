import 'package:flutter/material.dart';
import 'package:project_flutter/View/pages/invitation/form2.dart';
import 'package:project_flutter/View/widgets/text.form.global.dart';
import '../../../Utils/global.colors.dart';

class form extends StatefulWidget {
  form({super.key});

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController judulUndangan = TextEditingController();
  final TextEditingController alamatWebsite = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Text(
                  'Langkah 1 dari 5 ',
                  style: TextStyle(
                      color: GlobalColors.textColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                // Container(
                //   child: Row(children: [
                Divider(
                  color: Colors.blue[400],
                  thickness: 5,
                ),
                //   ]),
                // ),
                const SizedBox(height: 50),
                Text(
                  'Judul Undangan ',
                  style: TextStyle(
                      color: GlobalColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 15),
                TextFormGlobal(
                  controller: judulUndangan,
                  text: 'Undangan Benno Tyas',
                  error: "Judul Undangan tidak boleh kosong",
                  obscure: false,
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 5),
                Text(
                  '* Judul Undangan tidak akan mempengaruhi isi ',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 10,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Alamat Website ',
                  style: TextStyle(
                      color: GlobalColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 15),
                TextFormGlobal(
                  controller: alamatWebsite,
                  text: 'benno-tyas',
                  error: "Alamat Website tidak boleh kosong",
                  obscure: false,
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 5),
                Text(
                  'https://galakita.com/u/benno-tyas',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 10,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Tema ',
                  style: TextStyle(
                      color: GlobalColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return formdua();
            }));
          } else {}
        },
        child: Icon(Icons.keyboard_arrow_right),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}