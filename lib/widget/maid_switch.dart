import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaidSwitch extends StatefulWidget {
  MaidSwitch({Key? key}) : super(key: key);

  @override
  State<MaidSwitch> createState() => _MaidSwitchState();
}

class _MaidSwitchState extends State<MaidSwitch> {
  bool isSwitched = false;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Text(
            "Maid in Room",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Transform.scale(
            scale: 0.6,
            child: CupertinoSwitch(
              onChanged: toggleSwitch,
              value: isSwitched,
              activeColor: Colors.blue,
              trackColor: Colors.black.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
