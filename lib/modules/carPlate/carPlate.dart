import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/components/widgets.dart';

class Car_Plate extends StatefulWidget {
  const Car_Plate({Key? key}) : super(key: key);

  @override
  State<Car_Plate> createState() => _Car_PlateState();
}

class _Car_PlateState extends State<Car_Plate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: backgroundColor,
        leading: buildArrowBackButton(onPressed: () {}),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        child: Column(
          children: [
            Image(
              image: NetworkImage(
                  'https://i.ebayimg.com/images/g/y8IAAOSwAqhdv5Yz/s-l300.jpg'),
              height: 150.0,
              width: 210.0,
            ),
            SizedBox(
              height: 25.0,
            ),
            buildText(
              text: 'Please take a picture of your car identification number',
              size: 23.0,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15.0,
            ),
            buildText(
              text: 'Make the phone stable',
              size: 20.0,
              isBold: false,
            ),
            SizedBox(
              height: 100.0,
            ),
            Container(
              height: 69.0,
              width: 69.0,
              decoration: BoxDecoration(
                  color: defaultColor,
                  borderRadius: BorderRadius.circular(20.0)),
              child: IconButton(
                iconSize: 35.0,
                onPressed: () {
                  setState(() {
                    _bottomSheet(context);
                  });
                },
                icon: Icon(
                  Icons.camera_alt,
                  color: backgroundColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _bottomSheet(context) {
    showModalBottomSheet(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        backgroundColor: Colors.black.withOpacity(.0),
        context: context,
        builder: (BuildContext c) {
          return Container(
            height: 253.0,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(15.0),
                  topEnd: Radius.circular(15.0),
                )),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    defaultButton(
                        onPressed: () {},
                        text: 'Choose from gallery',
                        buttonWidth: 220.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    defaultButton(
                      onPressed: () {},
                      text: 'Take a photo',
                      backgroungColor: Colors.grey[200],
                      textColor: defaultColor,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
