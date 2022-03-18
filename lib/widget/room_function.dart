import 'package:flutter/material.dart';
import 'package:room_plan/utils/colors.dart';

import 'filter_chip_widget.dart';
import 'title_container.dart';

class RoomFunction extends StatefulWidget {
  RoomFunction({Key? key}) : super(key: key);

  @override
  State<RoomFunction> createState() => _RoomFunctionState();
}

class _RoomFunctionState extends State<RoomFunction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TitleContainer(myTitle: "Room Function")),
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
                  filterChipWidget(chipName: 'High Floor'),
                  filterChipWidget(chipName: 'Low Floor'),
                  filterChipWidget(chipName: 'Quiet Room'),
                  filterChipWidget(chipName: 'Bathtub'),
                  filterChipWidget(chipName: 'Balcony'),
                  filterChipWidget(chipName: 'Connecting'),
                  filterChipWidget(chipName: 'Sea View'),
                  filterChipWidget(chipName: 'City View'),
                  filterChipWidget(chipName: 'Garden View'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
