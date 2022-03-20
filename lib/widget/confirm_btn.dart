import 'package:flutter/material.dart';

class ConfirmBtn extends StatelessWidget {
  final void Function()? onTap;
  ConfirmBtn({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
            // padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
            child: Icon(
              Icons.refresh,
              color: Colors.blue,
              size: 26,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  //spreadRadius: 0,
                  blurRadius: 5,
                  offset: Offset(3.0, 4.0),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFE5E5E5),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    //spreadRadius: 0,
                    blurRadius: 5,
                    offset: Offset(3.0, 4.0),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFE5E5E5),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.blue,
                    size: 26,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Confirm",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Container(
          //   child: ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       primary: Color(0xFFE5E5E5),
          //     ),
          //     onPressed: () {},
          //   child: Row(
          //     children: [
          //       Icon(
          //         Icons.check,
          //         color: Colors.blue,
          //         size: 20,
          //       ),
          //       SizedBox(
          //         width: 5,
          //       ),
          //       Text("Confirm"),
          //     ],
          //   ),
          //   ),
          // )
        ],
      ),
    );
  }
}
