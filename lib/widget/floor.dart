import 'package:flutter/material.dart';

import 'filter_chip_widget.dart';
import 'title_container.dart';

class Floor extends StatefulWidget {
  Floor({Key? key}) : super(key: key);

  @override
  State<Floor> createState() => _FloorState();
}

class _FloorState extends State<Floor> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TitleContainer(myTitle: "Floor")),
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
                  filterChipWidget(chipName: '01'),
                  filterChipWidget(chipName: '02'),
                  filterChipWidget(chipName: '03'),
                  filterChipWidget(chipName: '04'),
                  filterChipWidget(chipName: '05'),
                  filterChipWidget(chipName: '06'),
                  filterChipWidget(chipName: '07'),
                  filterChipWidget(chipName: '08'),
                  filterChipWidget(chipName: '09'),
                  filterChipWidget(chipName: '10'),
                  filterChipWidget(chipName: '11'),
                  filterChipWidget(chipName: '12'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
