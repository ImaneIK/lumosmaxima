import 'package:flutter/material.dart';

class MVPage extends StatefulWidget {
  const MVPage({Key? key}) : super(key: key);

  @override
  State<MVPage> createState() => _MVPageState();
}

class _MVPageState extends State<MVPage> {
  goBack(BuildContext context) { //navigation - "go back" arrow
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
