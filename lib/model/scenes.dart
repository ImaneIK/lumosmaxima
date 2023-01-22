import 'package:flutter/cupertino.dart';

class  Scene {
  String id;
  String title;
  String status;
  IconData icon;
  bool isEnable;
  Scene({
    required this.title,
    required this.status,
    required this.icon,
    required this.isEnable,
    required this.id});
}