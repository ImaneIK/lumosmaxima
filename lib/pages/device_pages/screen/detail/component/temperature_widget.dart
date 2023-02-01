import 'package:flutter/material.dart';

import '../../../../../model/temperature.dart';
import '../detail_screen.dart';

class TemperatureWidget extends StatefulWidget {
  const TemperatureWidget({
    Key? key,
    @required this.temperature,
    @required this.onChanged,
  }) : super(key: key);
  final Temperature? temperature;
  final Function(double)? onChanged;

  @override
  _TemperatureWidgetState createState() => _TemperatureWidgetState();
}

class _TemperatureWidgetState extends State<TemperatureWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: getBackColor(widget.temperature!.value!),
      ),
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Timer',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '1 min',
                style: TextStyle(color: Colors.white),
              ),
              Expanded(
                child: Slider(
                  min: 1,
                  max: 60,
                  value: widget.temperature!.value!,
                  activeColor: Colors.white,
                  inactiveColor: Colors.white.withOpacity(0.2),
                  onChanged: (value) {
                    setState(() {
                      widget.onChanged!(value);
                    });
                  },
                ),
              ),
              Text(
                '60 min',
                style: TextStyle(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }

  Color? getBackColor(double value) {
    int newValue = value.toInt();
    Color? newColor;
    if (newValue >= 0 && newValue < 19) {
      newColor = colorGreen;
    } else if (newValue >= 19 && newValue < 22) {
      newColor = colorTeal;
    } else if (newValue >= 22 && newValue < 25) {
      newColor = colorBlue;
    } else if (newValue >= 25 && newValue < 28) {
      newColor = colorViolet;
    } else if (newValue >= 28) {
      newColor = colorRed;
    }

    return newColor!.withOpacity(0.2);
  }
}
