import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:room_plan/controllers/home_controller.dart';
import 'package:room_plan/widget/room_function.dart';

import 'pages/home_page.dart';

void main() {
  Get.put(HomeController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
