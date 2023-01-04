import 'package:flutter/material.dart';
import 'package:test1/pages/appliance.dart';
import 'package:test1/pages/dashboard.dart';
import 'package:test1/pages/profile.dart';
import 'package:test1/pages/settings.dart';
import 'package:test1/pages/users.dart';


var section = "devices";

class Routing extends StatefulWidget {

  @override
  State<Routing> createState() => _RoutingState();
}

class _RoutingState extends State<Routing> {

  int _selectedIndex = 0;
  var myBody = [Dashboard(),Appliance(),Users(), Profile(),Settings()];

  Widget MyTile(icon,text,index){
    return ListTile(
      leading: Icon(icon,
        color: Colors.blue,),
      title: Text(text,
        style: const TextStyle(color: Colors.blue, fontSize: 20.0),),
      trailing: const Icon(Icons.arrow_right),
      onTap: () {
        _onItemTapped(index);
      },
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '0': (context) => Dashboard(),
          '1': (context) => Appliance(),
          '2': (context) => Users(),
          '3': (context) => Profile(),
          '4': (context) => Settings(),
        },
        home: Scaffold(

          drawer: Drawer(
            child: ListView(
              children: [
                const UserAccountsDrawerHeader(
                    accountName: Text("Imane Khayati"),
                    accountEmail: Text("imane.khayati@e-polytechnique.ma"),
                    currentAccountPicture: CircleAvatar(foregroundImage:
                    AssetImage("assets/avatar.jpg"),)
                ),
                MyTile(Icons.house_outlined, "Dashboard", 0),
                MyTile(Icons.developer_board, "Rooms & Devices", 1),
                MyTile(Icons.group_outlined, "Users", 2),
                MyTile(Icons.person_outline, "Profile", 3),
                MyTile(Icons.settings_outlined, "Settings", 4),
              ],
            ),
          ),

          appBar: AppBar(
            title: Text("My Home"),
          ),
          body: myBody[_selectedIndex],

        )
    );
  }
}
