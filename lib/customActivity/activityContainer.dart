import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../CarDetails/CarDetailsNT/CarDetailsComponents/NT_containers.dart';
import 'activityTxt.dart';

class ActivityContainer extends StatelessWidget {
  String txt;
  String date;
  String cost;

  ActivityContainer(
    this.txt,
    this.date,
    this.cost, {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162,
      height: 165,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(14),
          color: const Color.fromRGBO(238, 241, 244, 1)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 50),
            child: buildDiscContainer(context, txt),
          ),
          const SizedBox(
            height: 12,
          ),
          activitytxt("Mid Town Parker", 14, FontWeight.w600),
          const SizedBox(
            height: 4,
          ),
          activitytxt(date, 12, FontWeight.w400),
          const SizedBox(
            height: 4,
          ),
          activitytxt(cost, 12, FontWeight.w600),
          const SizedBox(
            height: 10,
          ),
          buildDiscContainer(context, "5 EGP/hr"),
        ],
      ),
    );
  }
}
