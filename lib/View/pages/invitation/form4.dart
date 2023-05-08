import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project_flutter/View/pages/invitation/form5.dart';
import 'package:project_flutter/View/widgets/button/button.add.file.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';
import '../../../Utils/global.colors.dart';
import 'package:image_picker/image_picker.dart';

class formEmpat extends StatefulWidget {
  const formEmpat({super.key});

  @override
  State<formEmpat> createState() => _formEmpatState();
}

class _formEmpatState extends State<formEmpat> {
  File? image;
//Untuk get image

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();

    //untuk pilih an image
    final XFile? imagePicked =
        await _picker.pickImage(source: ImageSource.gallery);

    //convert file Xfile ke file
    image = File(imagePicked!.path);

    setState(() {});
  }

  @override
  void inistate() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Text(
                  'Langkah 4 dari 5',
                  style: TextStyle(
                      color: GlobalColors.textColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                StepProgressIndicator(
                  totalSteps: 5,
                  currentStep: 4,
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
                  child: Row(children: [
                    Icon(Icons.warning_amber, color: Colors.yellow),
                    const SizedBox(width: 10),
                    Text(
                      'Semua data bisa diedit setelah pembayaran ',
                      style: TextStyle(
                          color: GlobalColors.unselected,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ]),
                ),
                const SizedBox(height: 20),
                //menampilkan image yang di pilih
                image != null
                    ? Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: Image.file(
                          image!,
                          fit: BoxFit.cover,
                        ))
                    : Container(),
                Text(
                  'Foto Prewed ',
                  style: TextStyle(
                      color: GlobalColors.unselected,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                InkWell(
                  child: Container(
                    child: buttonAddFile(caption: 'Foto Cover (1)'),
                  ),
                  onTap: () async {
                    await getImage();
                  },
                ),

                const SizedBox(height: 20),
                Text(
                  'Gallery Prewed ',
                  style: TextStyle(
                      color: GlobalColors.unselected,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                const buttonAddFile(caption: 'Max 10 Foto'),
                const SizedBox(height: 20),
                Text(
                  'Video Preweding (Optional) ',
                  style: TextStyle(
                      color: GlobalColors.unselected,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                const buttonAddFile(caption: 'Max 10 Video'),
              ],
            ),
          ),
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
                    return formEmpat();
                  }));
                },
                child: Icon(Icons.keyboard_arrow_right),
              ),
            ])));
  }
}
