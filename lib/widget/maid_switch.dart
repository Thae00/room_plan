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
    return Row(
      children: [
        Text("Maid in Room"),
        Transform.scale(
          scale: 1,
          child: Switch(
            onChanged: toggleSwitch,
            value: isSwitched,
            activeColor: Colors.white,
            activeTrackColor: Colors.blue,
            inactiveThumbColor: Colors.black.withOpacity(0.2),
            inactiveTrackColor: Colors.grey,
          ),
        ),
      ],
    );
  }
}
