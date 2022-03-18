import 'package:flutter/material.dart';
import 'package:room_plan/utils/colors.dart';
import 'package:room_plan/widget/title_container.dart';

import 'filter_chip_widget.dart';

class MaidRoomStatus extends StatefulWidget {
  MaidRoomStatus({Key? key}) : super(key: key);

  @override
  State<MaidRoomStatus> createState() => _MaidRoomStatusState();
}

class _MaidRoomStatusState extends State<MaidRoomStatus> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TitleContainer(myTitle: "Maid Room Status")),
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
                  filterChipWidget(chipName: 'Clean'),
                  filterChipWidget(chipName: 'Dirty'),
                  filterChipWidget(chipName: 'Inspect'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
