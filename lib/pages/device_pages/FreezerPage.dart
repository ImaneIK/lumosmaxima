import 'package:flutter/material.dart';

class FreezerPage extends StatefulWidget {
  const FreezerPage({Key? key}) : super(key: key);

  @override
  State<FreezerPage> createState() => _FreezerPageState();
}

class _FreezerPageState extends State<FreezerPage> {
  goBack(BuildContext context) { //navigation - "go back" arrow
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container( child: Text("this is freezer page"),);
  }
}
