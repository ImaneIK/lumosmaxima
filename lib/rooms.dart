import 'package:flutter/material.dart';
import 'model/roomModel.dart';

class RoomSection extends StatefulWidget {

  final Rooms model;
  RoomSection(this.model);

  @override
  State<RoomSection> createState() => _RoomSectionState();
}

class _RoomSectionState extends State<RoomSection> {

  Widget _buildRoomCard(Rooms model, int index) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: index % 2 == 0
          ? EdgeInsets.fromLTRB(10, 7.5, 7.5, 7.5)
          : EdgeInsets.fromLTRB(7, 7.5, 15, 7.5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Icon(model.allYatch[index].icon,color: Colors.grey, size: 30,),
          SizedBox(
            height: 20,
          ),
          Text(
            model.allYatch[index].title,
            style: TextStyle(
                color: Colors.black,
                fontSize: 19,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "${model.allYatch[index].nbrDevices.toString()} devices",
            style: TextStyle(
                color: Colors.grey,
                fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _roomGrid(Rooms model) {
    return Container(
        alignment: Alignment.topCenter,
        // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        height: 487,
        child: GridView.count(
          // mainAxisSpacing: 10,
          // crossAxisSpacing: 10,
          crossAxisCount: 2,
          padding: EdgeInsets.all(0),
          children: List.generate(model.allYatch.length, (index) {
            return model.allYatch[index].title != null
                ? _buildRoomCard(model, index)
                : Container(
              height: 120,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              margin: index % 2 == 0
                  ? EdgeInsets.fromLTRB(15, 7.5, 7.5, 7.5)
                  : EdgeInsets.fromLTRB(7.5, 7.5, 15, 7.5),
              /*decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        blurRadius: 10,
                        offset: Offset(0, 10),
                        color: Color(0xfff1f0f2))
                  ],
                  color: Colors.white,
                  border: Border.all(
                      width: 1,
                      style: BorderStyle.solid,
                      color: Color(0xffa3a3a3)),
                  borderRadius: BorderRadius.circular(20)),*/
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            );
          }),
        ));
  }


  @override
  Widget build(BuildContext context) {
    return _roomGrid(widget.model);
   /* return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            dashCard(Icons.bedroom_parent_outlined, "Bedroom","2 Devices"),
            dashCard(Icons.living_outlined, "Living room","2 Devices"),
          ],
        ),


        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            dashCard(Icons.kitchen_outlined, "Kitchen","2 Devices"),
            dashCard(Icons.door_back_door_outlined, "Portal","2 Devices"),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Container(
                padding: EdgeInsets.all(20),
                height: 100,
                width: 100,
                child: Center(
                  child: Column(
                    children:  [
                      Icon(Icons.add),
                      SizedBox(height: 5,),
                      Text("Add Area", style: TextStyle(fontSize: 10),textAlign: TextAlign.center,),
                      SizedBox(height: 5,),
                        ],
                  ),
                ),
              ),
            ),
          ],
        ),

      ],
    );*/
  }
}

/*Widget dashCard (icon,text1,text2){
  return Card(
    child: Container(
      padding: EdgeInsets.all(20),
      height: 100,
      width: 100,
      child: Center(
        child: Column(
          children:  [
            Icon(icon),
            SizedBox(height: 5,),
            Text(text1, style: TextStyle(fontSize: 10),textAlign: TextAlign.center,),
            SizedBox(height: 5,),
            Text(text2, style: TextStyle(fontSize: 8),textAlign: TextAlign.center,),
          ],
        ),
      ),
    ),
  );
}*/