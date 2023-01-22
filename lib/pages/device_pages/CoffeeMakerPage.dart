import 'package:flutter/material.dart';

class CoffeeMakerPage extends StatefulWidget {
  const CoffeeMakerPage({Key? key}) : super(key: key);

  @override
  State<CoffeeMakerPage> createState() => _CoffeeMakerPageState();
}

class _CoffeeMakerPageState extends State<CoffeeMakerPage> {
  goBack(BuildContext context) { //navigation - "go back" arrow
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container( child: Text("this is coffee maker page"),);
  }
}
