import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'model/connectedModel.dart';

class DeviceSection extends StatefulWidget {

  final DeviceModel model;
   DeviceSection(this.model);

  @override
  State<DeviceSection> createState() => _DeviceSectionState();
}

class _DeviceSectionState extends State<DeviceSection> {

  Widget _buildDeviceCard(DeviceModel model, int index) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: index % 2 == 0
          ? EdgeInsets.fromLTRB(10, 7.5, 7.5, 7.5)
          : EdgeInsets.fromLTRB(7, 7.5, 15, 7.5),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: model.allYatch[index].isEnable
                  ? [Color(0xff669df4), Color(0xff4e80f3)]
                  : [Colors.white, Colors.white]),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Icon(model.allYatch[index].icon,
                  color: model.allYatch[index].isEnable
                      ? Colors.white
                      : Color(0xffa3a3a3)),
              Switch(
                  value: model.allYatch[index].isEnable,
                  activeColor: Color(0xff457be4),
                  onChanged: (_) {
                    setState(() {
                      model.allYatch[index].isEnable =
                      !model.allYatch[index].isEnable;
                    });
                  })
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            model.allYatch[index].title,
            style: TextStyle(
                color: model.allYatch[index].isEnable
                    ? Colors.white
                    : const Color(0xff302e45),
                fontSize: 19,
                fontWeight: FontWeight.w600),
          ),
          Text(
            model.allYatch[index].status,
            style: TextStyle(
                color: model.allYatch[index].isEnable
                    ? Colors.white
                    : Color(0xffa3a3a3),
                fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _deviceGrid(DeviceModel model) {
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
                ? _buildDeviceCard(model, index)
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


  //---------------------------------------------------------------------------------------------------





  bool isSwitched=false;
  var textValue='not Connected';

  void toggleSwitch(value){

    if(value==true) {
      setState((){
        isSwitched=value;
        textValue='Connected';
      });
      print('Connected');
    }else {
      setState((){
        isSwitched=value;
        textValue='not Connected';
      });
      print('not Connected');
    }
  }


  Widget switchToggle (){
    return Transform.scale(
      scale: 0.5,
      child: Switch(
        value: isSwitched,
        onChanged: toggleSwitch,
        activeColor: Colors.blue,
        activeTrackColor:Colors.yellow,
        inactiveThumbColor:Colors.redAccent,
        inactiveTrackColor:Colors.orange,

      ),
    );
  }

  Widget dashCard (icon,text){
    return Card(
      child: Container(
        padding: EdgeInsets.all(5),
        height: 100,
        width: 100,
        child: Center(
          child: Column(
            children:  [
              Icon(icon),
              SizedBox(height: 5,),
              Text(text, style: TextStyle(fontSize: 10),textAlign: TextAlign.center,),
               Text('$textValue',
                style:TextStyle(fontSize:8),),

              //Switch(value: false, onChanged: ())
            ],
          ),
        ),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return _deviceGrid(widget.model);
    /*return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            dashCard(Icons.ac_unit, "AC"),
            dashCard(Icons.microwave, "Microwave"),
          ],
        ),


        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            dashCard(Icons.kitchen_outlined, "Freezer"),
            dashCard(Icons.coffee_maker, "Coffee machine"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            dashCard(Icons.heat_pump_outlined, "Stove"),
            _buildDeviceCard(widget.model),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            dashCard(Icons.light_rounded, "Lamp"),
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
                  Text("Add Device", style: TextStyle(fontSize: 10),textAlign: TextAlign.center,),
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




