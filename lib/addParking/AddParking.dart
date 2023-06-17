// import 'package:flutter/material.dart';
// import 'addParkingComponents/addParkingText.dart';
//
// class AddParking extends StatelessWidget {
//   static const String routeName = "Addparking-screen";
//
//   const AddParking({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF196FD5),
//       body: Stack(alignment: Alignment.bottomCenter, children: [
//         Center(
//           child: (Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               addParkingTxt('Ready to'),
//               addParkingTxt('add your'),
//               addParkingTxt('park.!'),
//             ],
//           )),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(bottom: 104, left: 106),
//           child: Row(
//             children: [
//               InkWell(
//                 onTap: () => Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const AddParkingDetailsScreen(),
//                   ),
//                 ),
//                 child: Row(
//                   children: [
//                     const Text('Let’s make one',
//                         style: TextStyle(
//                           fontSize: 21,
//                           fontWeight: FontWeight.w600,
//                           fontFamily: 'Poppins',
//                           color: Color(0xFFFFFFFF),
//                         )),
//                     Image.asset('assets/images/gif.png'),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         )
//       ]),
//     );
//   }
// }
