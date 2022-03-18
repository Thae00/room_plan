import 'package:flutter/material.dart';
import 'package:room_plan/utils/colors.dart';

class SpecialRequest extends StatefulWidget {
  SpecialRequest({Key? key}) : super(key: key);

  @override
  State<SpecialRequest> createState() => _SpecialRequestState();
}

class _SpecialRequestState extends State<SpecialRequest> {
  int selectedIndex = -1;

  List texts = [
    "Extra Bed",
    "Extra Breakfast",
    "Transportation",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            "Special Request Items",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Wrap(
            children: List.generate(3, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  margin: EdgeInsets.only(right: 5, bottom: 5),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        //spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(3.0, 4.0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                    color: selectedIndex == index
                        ? AppColors.selectedBgColor
                        : AppColors.unselectedBgColor,
                  ),
                  child: Text(
                    texts[index],
                    style: TextStyle(
                      fontSize: 16,
                      color: selectedIndex == index
                          ? AppColors.SelectTextColor
                          : AppColors.unSelectTextColor,
                    ),
                  ),
                ),
                // child: SmallBox(text: texts[index]),
              );
            }),
          ),
        ),
      ],
    );
  }
}
