import 'package:flutter/material.dart';

class LampPage extends StatefulWidget {
  const LampPage({Key? key}) : super(key: key);

  @override
  State<LampPage> createState() => _LampPageState();
}

class _LampPageState extends State<LampPage> {
  goBack(BuildContext context) { //navigation - "go back" arrow
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container( child: Text("this is lamp page"),);
  }
}
