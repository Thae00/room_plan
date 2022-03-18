import 'package:flutter/material.dart';

import 'package:room_plan/widget/title_container.dart';

import 'filter_chip_widget.dart';

class BedType extends StatefulWidget {
  BedType({Key? key}) : super(key: key);

  @override
  State<BedType> createState() => _BedTypeState();
}

class _BedTypeState extends State<BedType> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TitleContainer(myTitle: "Bed Type")
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
                    filterChipWidget(chipName: 'Double'),
                    filterChipWidget(chipName: 'Twin'),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
