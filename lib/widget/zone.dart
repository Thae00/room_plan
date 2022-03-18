import 'package:flutter/material.dart';

import 'filter_chip_widget.dart';
import 'title_container.dart';

class Zone extends StatefulWidget {
  Zone({Key? key}) : super(key: key);

  @override
  State<Zone> createState() => _ZoneState();
}

class _ZoneState extends State<Zone> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TitleContainer(myTitle: "Zone")),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Wrap(
                spacing: 5.0,
                runSpacing: 5.0,
                children: <Widget>[
                  filterChipWidget(chipName: 'A'),
                  filterChipWidget(chipName: 'B'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
