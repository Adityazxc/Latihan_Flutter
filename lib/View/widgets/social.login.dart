import 'package:flutter/material.dart';
import 'package:project_flutter/Utils/global.colors.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
              '-Or Sign Up Wirh-',
              style: TextStyle(
                color: GlobalColors.mainColor,
                fontWeight: FontWeight.w600,
              ),
            ),
        ),
      ],
    );
  }
}