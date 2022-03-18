import 'package:flutter/material.dart';

import 'filter_chip_widget.dart';
import 'title_container.dart';

class Bing extends StatefulWidget {
  Bing({Key? key}) : super(key: key);

  @override
  State<Bing> createState() => _BingState();
}

class _BingState extends State<Bing> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TitleContainer(myTitle: "Bing")),
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
                  filterChipWidget(chipName: 'Main'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
