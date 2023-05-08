import 'package:flutter/material.dart';
import 'package:project_flutter/Utils/global.colors.dart';
import 'package:project_flutter/View/widgets/button/button.global.dart';
import 'package:project_flutter/View/widgets/social.login.dart';
import 'package:project_flutter/View/widgets/text.form.global.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Image(image: AssetImage('assets/logo_galakita.png')),
                        SizedBox(
                          height: 15,
                        ),
                        Text('The Invitation is all yours'),
                      ],
                    )),
                const SizedBox(height: 50),
                Text(
                  'Login to your account ',
                  style: TextStyle(
                      color: GlobalColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 15),

                //// Email Input
                TextFormGlobal(
                    controller: emailController,
                    text: 'Email',
                    error: "Alamat Website tidak boleh kosong",
                    obscure: false,
                    textInputType: TextInputType.emailAddress),

                const SizedBox(height: 10),
                //Password Input
                TextFormGlobal(
                  controller: passwordController,
                  text: 'Password',
                  error: "Alamat Website tidak boleh kosong",
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                const SizedBox(height: 10),

                const ButtonGlobal(),
                const SizedBox(height: 25),
                SocialLogin(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        alignment: Alignment.center,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Don\'t have an account?',
          ),
          InkWell(
            child: Text(
              ' Sign up',
              style: TextStyle(
                color: GlobalColors.mainColor,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
