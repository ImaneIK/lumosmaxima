import 'package:flutter/material.dart';
import 'package:test1/pages/appliance.dart';
import 'package:test1/pages/dashboard.dart';
import 'package:test1/pages/notifications.dart';
import 'package:test1/pages/settings.dart';
import 'package:test1/pages/users.dart';

import 'UI/MyDrawer.dart';


var section = "devices";

class Routing extends StatefulWidget {

  @override
  State<Routing> createState() => _RoutingState();
}

class _RoutingState extends State<Routing> {

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


  int _selectedIndex = 0;
  var myBody = [Dashboard(),Appliance(),Users(), Notifications(),Settings()];

  Widget MyTile(icon,text,index){
    return ListTile(

      leading: Icon(icon,
        color: Colors.deepPurple),
      title: Text(text,
        style: const TextStyle( fontSize: 20.0, color: Colors.deepPurple)),
      trailing: const Icon(Icons.arrow_right, color: Colors.deepPurple,),
      onTap: () {
        _onItemTapped(index);
      },
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => myBody[index]));
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        routes: {
          '0': (context) => Dashboard(),
          '1': (context) => Appliance(),
          '2': (context) => Users(),
          '3': (context) => Notifications(),
          '4': (context) => Settings(),
        },
        home: Scaffold(
          extendBodyBehindAppBar: true,
          /* appBar: AppBar(
              leading: Builder(
             builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(Icons.menu, color: Colors.deepPurple),
                  onPressed: () {
                    //open drawer
                    Scaffold.of(context).openDrawer();
                  },
                );
              }
            ),,
            backgroundColor: Color.fromRGBO(222,248,255,0),
            elevation: 0,

          ),*/
          body: myBody[_selectedIndex],
        )
    );
  }
}
