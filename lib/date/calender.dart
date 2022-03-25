import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CalendarWidget extends StatefulWidget {
  CalendarWidget({Key? key}) : super(key: key);

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  @override
  Widget build(BuildContext context) {
    return SfDateRangePickerTheme(
      data: SfDateRangePickerThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.black12.withOpacity(0.5),
        activeDatesTextStyle: TextStyle(color: Colors.white),
        headerTextStyle: TextStyle(color: Colors.white),
        viewHeaderTextStyle: TextStyle(color: Colors.white),
        weekNumberBackgroundColor: Colors.white,
        selectionTextStyle: TextStyle(color: Colors.white),
        startRangeSelectionColor: Color(0xFF36B9FF),
        endRangeSelectionColor: Color(0xFF36B9FF),
        rangeSelectionColor: Color(0xFF36B9FF),
      ),
      child: Container(
        width: 300,
        child: SfDateRangePicker(
          //backgroundColor: Colors.black.withOpacity(0.2),
          view: DateRangePickerView.month,
          allowViewNavigation: false,
          showNavigationArrow: false,
          selectionMode: DateRangePickerSelectionMode.range,
          selectionShape: DateRangePickerSelectionShape.rectangle,
          rangeTextStyle: TextStyle(
            color: Colors.white,
          ),
          // onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
          //   final dynamic value = args.value;
          // },
          // onViewChanged: (DateRangePickerViewChangedArgs args) {
          //   final PickerDateRange visibleDates = args.visibleDateRange;
          //   final DateRangePickerView view = args.view;
          // },
        ),
      ),
    );
  }
}
