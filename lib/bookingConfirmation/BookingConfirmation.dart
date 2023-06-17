import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../constants/colors.dart';
import '../constants/components/widgets.dart';
import '../modules/cancelBookingConfirmation/cancelBookingConfirmation.dart';

class BookingConfirmation extends StatelessWidget {
  static const String routeName = "BookingConfirmation";


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
          "Booking Confirmation",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(

            children: [

              const Image(image: AssetImage('assets/images/signUp_image.png')),
              const SizedBox(height: 32,),
              const Text("Booking confirmation has",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
              const Text("been completely succeed",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),


              const SizedBox(height: 26,),
              Container(
                width: 123,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color.fromRGBO(25, 111, 213, .8)),
                child: const Center(child: Text("Direction", style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),)),

              ),
              const SizedBox(height: 14,),
              defaultButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CancelBooking()));
                },
                text: 'Cancel the booking',
                backgroungColor: containerColor,
                textColor: defaultColor,
                buttonWidth: 216.0,
              ),
              /*Container(
              width: 216,
              height: 50,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(14),color: const Color.fromRGBO(238, 241, 244, 1)),
          child: const Center(child: Text("Cancel the booking",style: TextStyle(color: Color.fromRGBO(25, 111, 213, 1),fontSize: 16,fontWeight: FontWeight.w600),)),

             ),*/
              const SizedBox(height: 14,),
              const Text("Back to home", style: TextStyle(fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(25, 111, 213, 1)),),


            ],

          ),
        ),
      ),
    );
  }
}