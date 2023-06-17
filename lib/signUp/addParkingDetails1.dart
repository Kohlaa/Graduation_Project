// import 'package:flutter/material.dart';
// import '../constants/components.dart';
// import '../constants/transitions.dart';
// import 'add_parking_details2.dart';
// import 'signUpComponents/txt.dart';
// import 'signUpComponents/txtFormFeild2.dart';
//
// class AddParkingDetails1Screen extends StatelessWidget {
//   static const String routeName = "singUp2-screen";
//   final dynamic name;
//
//   const AddParkingDetails1Screen({super.key, this.name});
//
//   @override
//   Widget build(BuildContext context) {
//     final gateController = TextEditingController();
//     final distanceController = TextEditingController();
//     var d2Key = GlobalKey<FormState>();
//
//     return Scaffold(
//       backgroundColor: const Color(0xFF196FD5),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.all(padding(context)),
//             child: Form(
//               key: d2Key,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     'in your parking u must have a main gate, so enter the number of this gate, and the distance from it to the center of your parking',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 20,
//                         color: Colors.white),
//                   ),
//                   SizedBox(height: screenHeight(context, .06)),
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                         vertical: screenHeight(context, .01)),
//                     child: txt('Main gate'),
//                   ),
//                   TFF(
//                     action: TextInputAction.next,
//                     type: TextInputType.number,
//                     label: 'Main gate',
//                     hint: 'enter the number of the main gate',
//                     controller: gateController,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return '              enter the main gate number';
//                       } else {
//                         return null;
//                       }
//                     },
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                         vertical: screenHeight(context, .02)),
//                     child: txt('Distance'),
//                   ),
//                   TFF(
//                     action: TextInputAction.next,
//                     type: TextInputType.number,
//                     label: 'Distance',
//                     hint: 'distance from the main gate to the center',
//                     controller: distanceController,
//                   ),
//                   const SizedBox(
//                     height: 24,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       if (d2Key.currentState!.validate()) {
//                         Navigator.push(
//                           context,
//                           CustomPageRoute(child:AddParkingDetails2Screen(
//                             name: name,
//                             gate: gateController.text,
//                             distance: distanceController.text,
//                           ),
//                           ),
//                         );
//                         FocusScope.of(context).unfocus();
//                       } else {
//                         FocusScope.of(context).unfocus();
//                       }
//
//                     },
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Text('Next',
//                             style: TextStyle(
//                               fontSize: 21,
//                               fontWeight: FontWeight.w600,
//                               fontFamily: 'Poppins',
//                               color: Color(0xFFFFFFFF),
//                             )),
//                         Image.asset('assets/images/gif.png'),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
