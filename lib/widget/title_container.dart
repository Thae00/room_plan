import 'package:flutter/material.dart';

class TitleContainer extends StatelessWidget {
  final String myTitle;
  TitleContainer({Key? key, required this.myTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      myTitle,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
    );
  }
}
