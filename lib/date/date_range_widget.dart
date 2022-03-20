import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:room_plan/constant.dart';

class DateRangePickerWidget extends StatefulWidget {
  @override
  _DateRangePickerWidgetState createState() => _DateRangePickerWidgetState();
}

class _DateRangePickerWidgetState extends State<DateRangePickerWidget> {
  final now = DateTime.now();
  DateTimeRange? dateRange;

  // String getFrom() {
  //   if (dateRange == null) {
  //     return DateFormat('MM/dd/yyyy').format(now);
  //   } else {
  //     return DateFormat('MM/dd/yyyy').format(dateRange!.start);
  //   }
  // }

  // String getUntil() {
  //   if (dateRange == null) {
  //     return DateFormat('MM/dd/yyyy').format(now);
  //   } else {
  //     return DateFormat('MM/dd/yyyy').format(dateRange!.end);
  //   }
  // }

  String getDay() {
    if (dateRange == null) {
      return DateFormat('dd').format(now);
    } else {
      return DateFormat('dd').format(dateRange!.start);
    }
  }

  String getMonthYear() {
    if (dateRange == null) {
      return DateFormat('MM yyyy').format(now);
    } else {
      return DateFormat('MM yyyy').format(dateRange!.start);
    }
  }

  String getTextDay() {
    if (dateRange == null) {
      return DateFormat('EEEE').format(now);
    } else {
      return DateFormat('EEEE').format(dateRange!.start);
    }
  }

  String getFullStart() {
    if (dateRange == null) {
      return DateFormat('dd MM yyyy').format(now);
    } else {
      return DateFormat('dd MM yyyy').format(dateRange!.start);
    }
  }

  String UntilDay() {
    if (dateRange == null) {
      return DateFormat('dd').format(now);
    } else {
      return DateFormat('dd').format(dateRange!.end);
    }
  }

  String UntilMonthYear() {
    if (dateRange == null) {
      return DateFormat('MM yyyy').format(now);
    } else {
      return DateFormat('MM yyyy').format(dateRange!.end);
    }
  }

  String UntilTextDay() {
    if (dateRange == null) {
      return DateFormat('EEEE').format(now);
    } else {
      return DateFormat('EEEE').format(dateRange!.end);
    }
  }

  String UntilFullEnd() {
    if (dateRange == null) {
      return DateFormat('dd MM yyyy').format(now);
    } else {
      return DateFormat('dd MM yyyy').format(dateRange!.end);
    }
  }

  @override
  Widget build(BuildContext context) => Row(
        children: [
          ElevatedButton(
            onPressed: () {
              pickDateRange(context);

              date.add("From ${getFullStart()} To ${UntilFullEnd()}");

              // list.add(DateFormat('EEEE').format(dateRange!.end));
              //list.add(dateRange.toString());
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 5),
              child: Row(
                children: [
                  Row(
                    children: [
                      Text(
                        getDay(),
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            getMonthYear(),
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            getTextDay(),
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.only(bottom: 5),
              child: Row(
                children: [
                  Row(
                    children: [
                      Text(
                        UntilDay(),
                        //DateFormat('dd').format(now),
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            UntilMonthYear(),
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            UntilTextDay(),
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  Future pickDateRange(BuildContext context) async {
    final initialDateRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(Duration(hours: 24 * 3)),
    );
    final newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year),
      lastDate: DateTime(DateTime.now().year + 1),
      initialDateRange: dateRange ?? initialDateRange,
    );

    if (newDateRange == null) return;

    setState(() => dateRange = newDateRange);
  }
}
