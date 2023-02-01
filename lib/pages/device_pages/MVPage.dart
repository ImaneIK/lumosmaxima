import 'package:flutter/material.dart';
import 'package:test1/pages/device_pages/screen/power_btn.dart';
import '../../UI/slider_widget.dart';


class MVPage extends StatefulWidget {

  @override
  State<MVPage> createState() => _MVPageState();
}

goBack(BuildContext context) { //navigation - "go back" arrow
  Navigator.pop(context);
}

class _MVPageState extends State<MVPage> {

  bool _isOn = false;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Microwave"),
      ),
      body:SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  listItemStats('./assets/cool.png',"cooling Mode",true),
                  listItemStats('./assets/31048.png',"Set Timer", true),
                  listItemStats('./assets/heat.png',"Turbo Mode", true)
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  'Temperature',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
                ),
                const SizedBox(
                  height: 35,
                ),
              ],
            ),
            Expanded(
              child: SliderWidget(),
            ),

           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,

            ),
            const SizedBox(
              height: 35,
            ),

            ChipButton(
              child: const Icon(Icons.power_settings_new_rounded),
              onPressed: () {
                setState(() {
                  _isOn = !_isOn;
                });
              },
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),

    );
  }



  Widget listItemStats(String imgpath, String name, bool value){
    return Container(
      width: 110,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: value == true ? Colors.white : Color.fromRGBO(75, 97, 88, 1.0)
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Image(image: AssetImage(imgpath),width: 45,height: 45, color: value == true ? Colors.black : Colors.white),
          SizedBox(height: 15),
          Text(name, style: TextStyle(fontSize: 13, color: value == true ? Colors.black : Colors.white)),
          SizedBox(height: 5),
          Switch(
            value: value,
            onChanged: (newVal){
              setState(() {
                value = newVal;
                print(newVal);
              });
            },
            activeColor: Colors.blue,
          )
        ],
      ),
    );
  }

}


