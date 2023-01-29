import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

import '../UI/account_info.dart';
import '../UI/icon_widget.dart';
import '../UI/language.dart';
import '../UI/location.dart';
import '../UI/password.dart';
import '../UI/privacy.dart';
import '../UI/security.dart';
import '../utils/constants.dart';


class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

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
          title: Text('Account Settings'),
          subtitle: Text('Privacy,Security,Language'),
          leading: const IconWidget(
            icon: Icons.account_circle_outlined,
            color:Colors.purpleAccent,
          ),
          trailing: Icon(Icons.arrow_forward_ios_outlined,

          ),
        ));
     /* child: SettingsScreen(
        title: 'Account Settings',
        children: <Widget>[
          buildLanguage(),
          const SizedBox(
            height: 16,
          ),
          buildLocation(),
          const SizedBox(
            height: 16,
          ),
          buildPassword(),
          const SizedBox(
            height: 16,
          ),
          buildPrivacy(context),
          const SizedBox(
            height: 16,
          ),
          buildSecurity(context),
          const SizedBox(
            height: 16,
          ),
          buildAccountInfo(context),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );*/
  }
}
