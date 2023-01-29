import 'package:flutter/material.dart';
import 'package:test1/pages/user_details.dart';

import '../UI/MyDrawer.dart';
import '../UI/glass.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);
  @override
  State<Notifications> createState() => _NotificationsState();
}
class _NotificationsState extends State<Notifications> {

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(254, 244, 255, 1),
        title: Text('Notifications',style: TextStyle(color: Colors.deepPurple),),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu,color: Colors.deepPurple),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: MyDrawer(navigatorKey),



      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("bg1.jpg"), fit: BoxFit.cover)),

        child: SingleChildScrollView(

          child: Column(
            children: <Widget>[

              SizedBox(height: 20,),

              list_of_users("Security","Activate the two-step authentification",Icons.person_outline),

              list_of_users("Devices","The Microwave has finished",Icons.person_outline),

              list_of_users("Users","A new person detected near",Icons.person_outline),

              list_of_users("Devices","New device detected: Alexa",Icons.person_outline),


            ],
          ),
        ),
      ),
    ) ;
  }


  Widget list_of_users(name,role,icon){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 17),
      child: GlassMorphism(
        start: 0.2,
        end: 0.4,
        topRight: 20,
        topLeft: 20,
        bottomLeft: 20,
        bottomRight: 20,
        blurx: 2,
        blury: 2,
        child: ListTile(
          leading: Icon(icon,color: Colors.deepPurple),
          title:  Text(
            name, style: TextStyle(color: Colors.deepPurple),
            textScaleFactor: 1,
          ),
          trailing:  Icon(Icons.arrow_forward_ios_outlined,color: Colors.deepPurple),
          subtitle:  Text(role,style: TextStyle(color: Colors.deepPurple),),
          selected: true,
          onTap: () {
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UserDetails()));
            });
          },
        ),
      ),
    );
  }
}

