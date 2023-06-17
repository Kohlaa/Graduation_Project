import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/components/widgets.dart';
import '../../layout/parking_layout.dart';

class CancelBooking extends StatelessWidget {
  const CancelBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: buildArrowBackButton(onPressed: () {}),
        title: buildText(
          text: 'Booking Confirmation',
          size: 20.0,
        ),
      ),
      backgroundColor: backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildText(
                  text: 'Cancelling the booking has been completed',
                  size: 25.0,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: 36.0,
              ),
              defaultButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Layout(),
                    ),
                    (route) => false,
                  );
                },
                text: 'Back to home',
                textColor: defaultColor,
                backgroungColor: backgroundColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
