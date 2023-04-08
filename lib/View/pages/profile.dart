import 'package:flutter/material.dart';
import 'package:project_flutter/View/login.view.dart';
import 'package:project_flutter/View/pages/setting/language.dart';
import 'package:project_flutter/View/pages/ucapan.dart';
import 'package:settings_ui/settings_ui.dart';
import '../../Utils/global.colors.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Akun"),
        ),
        body: SettingsList(
          sections: [
            SettingsSection(
              tiles: <SettingsTile>[
                SettingsTile.navigation(
                  leading: Icon(Icons.language),
                  title: Text('Bahasa'),
                  value: Text('Indonesia'),
                  onPressed: (context) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return language();
                    }));
                  },
                ),
                SettingsTile.navigation(
                  leading: Icon(Icons.privacy_tip),
                  title: Text('Kebijakan Privasi'),
                ),
                SettingsTile.navigation(
                  leading: Icon(Icons.key),
                  title: Text('Ganti Password'),
                ),
                SettingsTile.navigation(
                  leading: Icon(Icons.question_mark),
                  title: Text('Bantuan Galakita'),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop(MaterialPageRoute(builder: (context) {
              return LoginView();
            }));
          },
          child: Icon(Icons.logout),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}
