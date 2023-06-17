import 'package:flutter/material.dart';
import '../../BookingPayment/BookingPayment.dart';
import '../../constants/colors.dart';
import '../../constants/components/widgets.dart';

class Booking_Confirmation extends StatelessWidget {
  String startingDay = '15 July, 2023';
  String endingDay = '15 July, 2023';
  String? startingHour ;
  String endingHour = '4:00 PM';
  String? selectedSlotRange;
  String? selectedSlotNumber;
  Booking_Confirmation({super.key, required String this.selectedSlotRange,required String this.selectedSlotNumber,required String this.startingHour,required this.endingHour});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: buildArrowBackButton(onPressed: () {
          // Navigator.pop(
          //     context, MaterialPageRoute(builder: (context) => Date_Time()));
        }),
        title: buildText(
          text: 'Booking Confirmation',
          size: 20.0,
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      top: 51.0,
                      start: 27.0,
                      end: 27.0,
                    ),
                    child: Container(
                      height: 387.0,
                      width: 336,
                      decoration: BoxDecoration(
                        color: defaultColor,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 13.0,
                        horizontal: 11.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: backgroundColor,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                start: 16.0,
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                      top: 15.0,
                                      bottom: 29.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 21.0,
                                          backgroundColor: defaultColor
                                              .withOpacity(.1),
                                          child: Icon(
                                            Icons.location_on_outlined,
                                            size: 30.0,
                                            color: defaultColor,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 3.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            buildText(
                                                text: 'Mid Town Parker',
                                                size: 14.0),
                                            const SizedBox(
                                              height: 4.0,
                                            ),
                                            buildText(
                                                text:
                                                    'SB road, Alexandria, Egypt',
                                                size: 12.0,
                                                isBold: false),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          buildText(
                                              text: 'Booking ID',
                                              size: 12.0,
                                              isBold: false),
                                          buildText(
                                            text: 'P001365268',
                                            size: 12.0,
                                          ),
                                        ],
                                      )),
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          buildText(
                                              text: 'Parking Spot',
                                              size: 12.0,
                                              isBold: false),
                                          buildText(
                                            text: '$selectedSlotRange' +'-'+ '$selectedSlotNumber',
                                            size: 12.0,
                                          ),
                                        ],
                                      )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      buildText(
                                          text: 'Booking Date & Time',
                                          size: 12.0,
                                          isBold: false),
                                      Row(
                                        children: [
                                          Expanded(
                                              child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              buildText(
                                                text: startingDay,
                                                size: 12.0,
                                              ),
                                              buildText(
                                                text: startingHour,
                                                size: 12.0,
                                              ),
                                            ],
                                          )),
                                          Expanded(
                                              child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              buildText(
                                                text: endingDay,
                                                size: 12.0,
                                              ),
                                              buildText(
                                                text: endingHour,
                                                size: 12.0,
                                              ),
                                            ],
                                          )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                top: 46.0,
                                bottom: 15.0,
                              ),
                              child: Row(
                                children: [
                                  buildSemiRightCircle(10.0),
                                  Expanded(
                                    child: Divider(
                                      thickness: 2.0,
                                      color: defaultColor,
                                    ),
                                  ),
                                  buildSemiLeftCircle(10.0),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                start: 16.0,
                                end: 18.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  buildText(
                                      text: 'Cost', size: 12.0, isBold: false),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: buildText(
                                          text: 'Parking hours (2hr)',
                                          size: 12.0,
                                        ),
                                      ),
                                      buildText(
                                        text: 'EGP 3',
                                        size: 12.0,
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: buildText(
                                          text: 'Tips',
                                          size: 12.0,
                                        ),
                                      ),
                                      buildText(
                                        text: 'EGP 2',
                                        size: 12.0,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 18.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: buildText(
                                          text: 'Total',
                                          size: 12.0,
                                        ),
                                      ),
                                      buildText(
                                        text: 'EGP 5',
                                        size: 12.0,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 43,
              ),
              child: defaultButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BookingPayment()));
                },
                text: 'Processed to payment',
                size: 18.0,
                buttonWidth: 250.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
