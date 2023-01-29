import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';


import '../UI/icon_widget.dart';
import '../UI/user_info.dart';
import '../utils/constants.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => UserInfo()) );
      },
      child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color.fromRGBO(222,248,255,0.95), const Color.fromRGBO(222,248,255,0.4)]
              ),
              borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            title: Text('John Doe'),
            subtitle: Text('Admin'),
            leading:  IconWidget(
              icon:Icons.admin_panel_settings,
              color:Colors.purpleAccent,
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined,

            ),
          )),
    );



       /*   const SizedBox(
            height: 16,
          ),
          buildAbout(),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );*/
  }
}
