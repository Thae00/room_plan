import 'package:flutter/material.dart';
import 'package:room_plan/widget/room_function.dart';

import 'pages/home_page.dart';
import 'testing/test_filter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FilterChipDisplay(),
    );
  }
}
