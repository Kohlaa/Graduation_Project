import 'package:flutter/material.dart';
import 'package:garduation/constants/colors.dart';
import 'package:garduation/constants/components.dart';

SizedBox buildDiscContainer(BuildContext context,txt) {
  return SizedBox(
    width: screenWidth(context, .2),
    height: screenHeight(context, .1),
    child: Center(
      child: Text(
        txt,
        style: TextStyle(color: defaultColor),
      ),
    ),
  );
}
