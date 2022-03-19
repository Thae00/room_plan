import 'package:flutter/material.dart';

import 'filter_chip_widget.dart';
import 'title_container.dart';

class Rooms extends StatefulWidget {
  Rooms({Key? key}) : super(key: key);

  @override
  State<Rooms> createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TitleContainer(myTitle: "Rooms")),
        ),
        Container(
          height: 100,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  color: Colors.grey.withOpacity(0.2),
                  padding: EdgeInsets.only(right: 15, bottom: 10, top: 5),
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: <Widget>[
                      for (int i = 201; i <= 214; i++) ...[
                        filterChipWidget(
                          chipName: i.toString(),
                        ),
                      ],
                      for (int i = 301; i <= 314; i++) ...[
                        filterChipWidget(
                          chipName: i.toString(),
                        ),
                      ],
                      for (int i = 401; i <= 414; i++) ...[
                        filterChipWidget(
                          chipName: i.toString(),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
