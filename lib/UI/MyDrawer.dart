import 'package:flutter/material.dart';
import '../pages/appliance.dart';
import '../pages/dashboard.dart';
import '../pages/profile.dart';
import '../pages/settings.dart';
import '../pages/users.dart';


class MyDrawer extends StatefulWidget {
  const MyDrawer(GlobalKey<NavigatorState> navigatorKey, {Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  int _selectedIndex = 0;
  var myBody = [Dashboard(),Appliance(),Users(), Profile(),Settings()];


  @override
  Widget build(BuildContext context) {
    return Drawer(
      //backgroundColor: Color.fromRGBO(222,248,255,0.6),
      backgroundColor: Colors.white,

      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color:Colors.white
              ),
              accountName: Text("John Doe",style: TextStyle(color: Colors.deepPurple),),
              accountEmail: Text("Admin",style: TextStyle(color: Colors.deepPurple)),
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
    );
  }


  Widget MyTile(icon, text, index) {
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
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => myBody[index]));
  }

}