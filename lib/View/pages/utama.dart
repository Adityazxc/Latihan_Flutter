import 'package:flutter/material.dart';
import 'package:profile/profile.dart';
import 'package:project_flutter/View/widgets/button.global.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import '../../Utils/global.colors.dart';

class utamaPage extends StatefulWidget {
  const utamaPage({Key? key}) : super(key: key);

  @override
  State<utamaPage> createState() => _utamaPageState();
}

class _utamaPageState extends State<utamaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 30),
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
                        fontWeight: FontWeight.bold                        
                      ),
                    ),
                        const SizedBox(height: 25),
                    Text(
                       'Buat Undangan Baru',
                        style: TextStyle(
                        color: GlobalColors.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold                        
                      ),
                      textAlign: TextAlign.center,
                    ),
              ]),      
            
                   
              ),     
          ),
          
        
    );
  }
}