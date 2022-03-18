import 'package:flutter/material.dart';

class FilterChipDisplay extends StatefulWidget {
  @override
  _FilterChipDisplayState createState() => _FilterChipDisplayState();
}

class _FilterChipDisplayState extends State<FilterChipDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: _titleContainer("Choose amenities"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  child: Wrap(
                spacing: 5.0,
                runSpacing: 3.0,
                children: [
                  filterChipWidget(chipName: 'Elevator'),
                  filterChipWidget(chipName: 'Washer/Dryer'),
                  filterChipWidget(chipName: 'Fireplace'),
                  filterChipWidget(chipName: 'Dogs ok'),
                  filterChipWidget(chipName: 'Cats ok'),
                  filterChipWidget(chipName: 'Wheelchair access'),
                ],
              )),
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            height: 10.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: _titleContainer('Choose Neighborhoods'),
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
                    filterChipWidget(chipName: 'Upper Manhattan'),
                    filterChipWidget(chipName: 'Manhattanville'),
                    filterChipWidget(chipName: 'Harlem'),
                    filterChipWidget(chipName: 'Washington Heights'),
                    filterChipWidget(chipName: 'Inwood'),
                    filterChipWidget(chipName: 'Morningside Heights'),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

Widget _titleContainer(String myTitle) {
  return Text(
    myTitle,
    style: TextStyle(
        color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
  );
}

class filterChipWidget extends StatefulWidget {
  final String chipName;
  filterChipWidget({Key? key, required this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      showCheckmark: false,
      label: Text(widget.chipName),
      labelStyle: TextStyle(
          color: Color(0xff6200ee),
          fontSize: 16.0,
          fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      backgroundColor: Color(0xffededed),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Colors.green,
    );
  }
}