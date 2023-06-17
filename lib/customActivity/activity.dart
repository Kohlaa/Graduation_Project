import 'package:flutter/material.dart';
import 'activityContainer.dart';

class Activity extends StatelessWidget {
  static const String routeName = "Activity";

  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
        title: const Text(
          "Activity",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 67.5, horizontal: 24),
                  child: ActivityContainer("12 Jan", "1 pm - 3 pm", "15 EGP")),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 67.5, horizontal: 5),
                child: ActivityContainer("10 Dec", "5 pm - 6 pm", "5 EGP"),
              ),
            ],
          ),
         
             Padding(
               padding: const EdgeInsets.only(left: 24),
               child: ActivityContainer("25 May", "5 am - 10 am", "25 EGP"),
             ),
          
        ],
      ),
    );
  }
}
