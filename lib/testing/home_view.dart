// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';
// import 'package:room_plan/controllers/home_controller.dart';

// class HomeView extends GetView<HomeController> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Obx(
//           () => Text(
//             DateFormat("dd-MMM-EEEE")
//                 .format(controller.selectedDate.value)
//                 .toString(),
//             style: TextStyle(fontSize: 25),
//           ),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             controller.chooseDate();
//           },
//           child: Text('Select Date'),
//         )
//       ],
//     );
//   }
// }
