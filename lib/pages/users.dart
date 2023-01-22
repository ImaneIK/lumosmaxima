import 'package:flutter/material.dart';

import '../UI/MyDrawer.dart';
class Users extends StatefulWidget {
  const Users({Key? key}) : super(key: key);
  @override
  State<Users> createState() => _UsersState();
}
class _UsersState extends State<Users> {

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: MyDrawer(navigatorKey),
      body: const Center( child: Text("this is users section"))
    ) ;
  }
}
