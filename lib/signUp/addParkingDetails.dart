// import 'package:flutter/material.dart';
// import 'package:garduation/constants/components.dart';
// import 'package:garduation/constants/transitions.dart';
// import 'signUpComponents/txt.dart';
// import 'addParkingDetails1.dart';
//
// class AddParkingDetailsScreen extends StatelessWidget {
//   static const String routeName = "singUp-screen";
//
//   const AddParkingDetailsScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final nameController = TextEditingController();
//     var d1Key = GlobalKey<FormState>();
//     return Scaffold(
//       backgroundColor: const Color(0xFF196FD5),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.all(padding(context)),
//             child: Form(
//               key: d1Key,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   txt('Park Name'),
//                   const SizedBox(
//                     height: 8,
//                   ),
//                   TFF(
//                     controller: nameController,
//                     type: TextInputType.name,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'enter the name';
//                       } else {
//                         return null;
//                       }
//                     },
//                     label: 'Name',
//                     prefix: Icons.drive_file_rename_outline,
//                     action: TextInputAction.next,
//                   ),
//                   SizedBox(
//                     height: screenHeight(context, .03),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       if (d1Key.currentState!.validate()) {
//                         Navigator.push(
//                           context,
//                           CustomPageRoute(
//                               child: AddParkingDetails1Screen(
//                                   name: nameController.text)),
//                         );
//                         FocusScope.of(context).unfocus();
//                       } else {
//                         FocusScope.of(context).unfocus();
//                       }
//                     },
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Text(
//                           'Next',
//                           style: TextStyle(
//                             fontSize: 21,
//                             fontWeight: FontWeight.w600,
//                             fontFamily: 'Poppins',
//                             color: Color(0xFFFFFFFF),
//                           ),
//                         ),
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
