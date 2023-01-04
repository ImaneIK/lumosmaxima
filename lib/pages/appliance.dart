import 'package:flutter/material.dart';
import '../devices.dart';
import '../model/connectedModel.dart';
import '../model/roomModel.dart';
import '../rooms.dart';
import '../routing.dart';
class Appliance extends StatefulWidget {

  final DeviceModel model1 = DeviceModel();
  final Rooms model2 = Rooms();


  @override
  State<Appliance> createState() => _ApplianceState();
}
class _ApplianceState extends State<Appliance> {


  Widget? redirectSection(section){
    if(section == "devices"){
      return DeviceSection(widget.model1);
    }else if(section == "rooms"){
      return RoomSection(widget.model2);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea( child: SingleChildScrollView(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          Container(
            margin: EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                dashCard(Icons.sunny_snowing, "21°C"),
                dashCard(Icons.water_drop, "50%"),
                dashCard(Icons.co2, "2.1%"),
              ],
            ),
          ),

          SizedBox(
            width: double.infinity,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),

              padding: EdgeInsets.all(20),

              child:
              Column(
                //mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(

                    margin:EdgeInsets.only(bottom:15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(fontSize: 18),

                            ),
                            onPressed: (){
                              setState(() {
                                section = "rooms";
                              });
                            }, child: Text("Rooms")),

                        TextButton(style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(fontSize: 18),
                        ),onPressed: (){
                          setState(() {
                            section = "devices";
                          });
                        }, child: Text("Devices")),
                      ],
                    ),
                  ),

                    Container(
                      child: redirectSection(section),

                  ),

                ],
              ),
            ),),
        ],
      ),
    ),
    );
  }
}
Widget dashCard (icon,text){
  return Card(
    child: Container(
      padding: EdgeInsets.only(left:5, right: 5, top:20, bottom:20),
      height: 95,
      width: 95,
      child: Center(
        child: Column(
          children:  [
            Icon(icon),
            SizedBox(height: 5,),
            Text(text, style: TextStyle(fontSize: 10),textAlign: TextAlign.center,),
          ],
        ),
      ),
    ),
  );
}