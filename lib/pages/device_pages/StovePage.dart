import 'package:flutter/material.dart';

class StovePage extends StatefulWidget {
  const StovePage({Key? key}) : super(key: key);

  @override
  State<StovePage> createState() => _StovePageState();
}

class _StovePageState extends State<StovePage> {
  goBack(BuildContext context) { //navigation - "go back" arrow
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("this is Stove page"),
    );
  }
}
