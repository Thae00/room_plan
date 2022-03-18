import 'package:flutter/material.dart';

import 'filter_chip_widget.dart';
import 'title_container.dart';

class ReservationType extends StatefulWidget {
  ReservationType({Key? key}) : super(key: key);

  @override
  State<ReservationType> createState() => _ReservationTypeState();
}

class _ReservationTypeState extends State<ReservationType> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TitleContainer(myTitle: "Reservation Type")
            ),
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
                    filterChipWidget(chipName: 'Transient'),
                    filterChipWidget(chipName: 'Party'),
                    filterChipWidget(chipName: 'Group'),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
