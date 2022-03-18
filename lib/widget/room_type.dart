import 'package:flutter/material.dart';
import 'package:room_plan/utils/colors.dart';

import 'filter_chip_widget.dart';
import 'title_container.dart';

class RoomType extends StatefulWidget {
  RoomType({Key? key}) : super(key: key);

  @override
  State<RoomType> createState() => _RoomTypeState();
}

class _RoomTypeState extends State<RoomType> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TitleContainer(myTitle: "Room Type")),
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
                  filterChipWidget(chipName: 'SUPDB'),
                  filterChipWidget(chipName: 'SUPTW'),
                  filterChipWidget(chipName: 'DLXDB'),
                  filterChipWidget(chipName: 'DLXTW'),
                  filterChipWidget(chipName: 'JUNIO'),
                  filterChipWidget(chipName: 'SUITE'),
                  filterChipWidget(chipName: 'SNGBD'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
