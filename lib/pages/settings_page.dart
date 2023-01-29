import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';


import '../UI/darkMode.dart';
import '../UI/delete.dart';
import '../UI/feedback.dart';
import '../UI/logout.dart';
import '../UI/notification.dart';
import '../UI/repport_bug.dart';
import '../splashScreen.dart';
import '../utils/constants.dart';
import 'account_page.dart';
import 'header_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("bg1.jpg"), fit: BoxFit.cover)),

          child: ListView(
            padding: const EdgeInsets.all(padding),
            children: [
              HeaderPage(),


              SettingsGroup( title: '',
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                DarkMode(),
                const SizedBox(
                  height: 20,
                ),
                AccountPage(),
                const SizedBox(
                  height: 20,
                ),
                buildDeleteAccount(),
                const SizedBox(
                  height: 20,
                ),
                notification(),
                const SizedBox(
                  height: 20,
                ),
                buildReportBug(context),
                const SizedBox(
                  height: 20,
                ),
                buildSendFeedback(context),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Splash()) );
                    },
                    child: buildLogout()),
              ]),
            ],
          ),
        ));
  }
}


