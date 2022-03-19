import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:room_plan/controllers/home_controller.dart';

class StartDate extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: ElevatedButton(
            onPressed: () {
              controller.chooseDate();
            },
            child: Row(
              children: [
                Obx(() => Row(
                      children: [
                        Text(
                          DateFormat("dd")
                              .format(controller.selectedDate.value)
                              .toString(),
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              DateFormat("MMM yyyy")
                                  .format(controller.selectedDate.value)
                                  .toString(),
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              DateFormat("EEEE")
                                  .format(controller.selectedDate.value)
                                  .toString(),
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          child: ElevatedButton(
            onPressed: () {
              controller.chooseDate();
            },
            child: Row(
              children: [
                Obx(() => Row(
                      children: [
                        Text(
                          DateFormat("dd")
                              .format(controller.selectedDate.value)
                              .toString(),
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              DateFormat("MMM yyyy")
                                  .format(controller.selectedDate.value)
                                  .toString(),
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              DateFormat("EEEE")
                                  .format(controller.selectedDate.value)
                                  .toString(),
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
