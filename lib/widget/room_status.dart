import 'package:flutter/material.dart';
import 'package:room_plan/utils/colors.dart';

import 'filter_chip_widget.dart';
import 'title_container.dart';

class RoomStatus extends StatefulWidget {
  RoomStatus({Key? key}) : super(key: key);

  @override
  State<RoomStatus> createState() => _RoomStatusState();
}

class _RoomStatusState extends State<RoomStatus> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TitleContainer(myTitle: "Room Status")),
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
                  filterChipWidget(chipName: 'OCC'),
                  filterChipWidget(chipName: 'VAC'),
                  filterChipWidget(chipName: 'OOO'),
                  filterChipWidget(chipName: 'OOS'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
