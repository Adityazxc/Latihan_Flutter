import 'package:flutter/material.dart';
import '../../../Utils/global.colors.dart';
import 'form3.dart';

class formdua extends StatelessWidget {
  const formdua({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.all(15.0),
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Text(
                'Langkah 2 dari 5 ',
                style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
              Text(
                'Pilih Paket ',
                style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )),
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
