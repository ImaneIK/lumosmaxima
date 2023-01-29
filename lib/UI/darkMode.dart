import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

import '../utils/constants.dart';
import 'icon_widget.dart';

class DarkMode extends StatelessWidget {
  static const keyDarkMode = 'key-dark-mode';

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [const Color.fromRGBO(222,248,255,0.95), const Color.fromRGBO(222,248,255,0.4)]
            ),
            borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          title: Text('Off Energy'),
          subtitle: Text(''),
          leading: const IconWidget(
            icon: Icons.power_settings_new,
            color:Colors.purpleAccent,
          ),
          trailing: Switch(value: false, onChanged: (bool value) {  },

          ),
        ));
  }
}
