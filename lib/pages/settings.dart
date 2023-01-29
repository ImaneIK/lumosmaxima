import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:test1/pages/settings_page.dart';

import '../UI/MyDrawer.dart';
import '../UI/darkMode.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);
  @override
  State<Settings> createState() => _SettingsState();
}
class _SettingsState extends State<Settings> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  //final isDarkMode = Settings.getValue<bool>(DarkMode.keyDarkMode, true);
  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(
          backgroundColor: Color.fromRGBO(254, 244, 255, 1),
          title: Text('App Settings',style: TextStyle(color:Colors.deepPurple)),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu,color:Colors.deepPurple),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
        drawer: MyDrawer(navigatorKey),
        body:

        SettingsPage()

    );

  }
}
