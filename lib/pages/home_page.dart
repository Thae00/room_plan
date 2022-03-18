import 'package:flutter/material.dart';
import 'package:room_plan/widget/bed_type.dart';
import 'package:room_plan/widget/bing.dart';
import 'package:room_plan/widget/confirm_btn.dart';
import 'package:room_plan/widget/floor.dart';
import 'package:room_plan/widget/maid_room_status.dart';
import 'package:room_plan/widget/maid_switch.dart';
import 'package:room_plan/widget/reservation_type.dart';
import 'package:room_plan/widget/room_function.dart';
import 'package:room_plan/widget/room_status.dart';
import 'package:room_plan/widget/room_type.dart';
import 'package:room_plan/widget/rooms.dart';
import 'package:room_plan/widget/special_request.dart';
import 'package:room_plan/widget/zone.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Room Plan Criteria"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 30, top: 20, right: 30, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Bing(),
              SizedBox(
                height: 5,
              ),
              Zone(),
              SizedBox(
                height: 5,
              ),
              Floor(),
              SizedBox(
                height: 5,
              ),
              RoomType(),
              SizedBox(
                height: 5,
              ),
              RoomFunction(),
              SizedBox(
                height: 5,
              ),
              BedType(),
              SizedBox(
                height: 5,
              ),
              Rooms(),
              SizedBox(
                height: 5,
              ),
              RoomStatus(),
              SizedBox(
                height: 5,
              ),
              MaidRoomStatus(),
              SizedBox(
                height: 5,
              ),
              MaidSwitch(),
              SizedBox(
                height: 5,
              ),
              SpecialRequest(),
              SizedBox(
                height: 5,
              ),
              ReservationType(),
              SizedBox(
                height: 5,
              ),
              ConfirmBtn(),
            ],
          ),
        ),
      ),
    );
  }
}
