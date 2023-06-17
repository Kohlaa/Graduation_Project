// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:garduation/bloc/cubit.dart';
// import 'package:garduation/bloc/states.dart';
// import 'package:garduation/signUp/signUpComponents/txt.dart';
//
// import '../constants/colors.dart';
// import '../constants/components.dart';
//
// class AddParkingDetails2Screen extends StatelessWidget {
//   final dynamic name;
//   final dynamic gate;
//   final dynamic distance;
//
//   const AddParkingDetails2Screen(
//       {super.key, this.name, this.gate, this.distance});
//
//   @override
//   Widget build(BuildContext context) {
//     final discController = TextEditingController();
//     final capacityController = TextEditingController();
//     final floorController = TextEditingController();
//     final nearestController = TextEditingController();
//
//     return BlocConsumer<GradCubit, GradStates>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         var cubit = GradCubit.get(context);
//         return Scaffold(
//           backgroundColor: darkBlue,
//           body: Center(
//             child: SingleChildScrollView(
//               child: Padding(
//                 padding: const EdgeInsets.all(25.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       'in your parking u must have a main gate, so enter the number of this gate, and the distance from it to the center of your parking',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 20,
//                           color: Colors.white),
//                     ),
//                     SizedBox(height: screenHeight(context, .06)),
//                     Padding(
//                       padding: EdgeInsets.symmetric(
//                           vertical: screenHeight(context, .01)),
//                       child: txt('full capacity'),
//                     ),
//                     TFF(
//                       action: TextInputAction.next,
//                       type: TextInputType.number,
//                       label: 'Capacity',
//                       hint: 'enter the full capacity of your parking',
//                       controller: capacityController,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(
//                           vertical: screenHeight(context, .02)),
//                       child: txt('floor capacity'),
//                     ),
//                     TFF(
//                       action: TextInputAction.next,
//                       type: TextInputType.number,
//                       label: 'Floor capacity',
//                       hint: 'enter the floor capacity of your parking',
//                       controller: floorController,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(
//                           vertical: screenHeight(context, .02)),
//                       child: txt('Details'),
//                     ),
//                     TFF(
//                       action: TextInputAction.next,
//                       type: TextInputType.text,
//                       label: 'description',
//                       hint: 'describe your parking',
//                       controller: discController,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(
//                           vertical: screenHeight(context, .02)),
//                       child: txt('nearest places to your parking'),
//                     ),
//                     TFF(
//                       action: TextInputAction.next,
//                       type: TextInputType.text,
//                       label: 'nearest',
//                       hint: 'what is teh nearest places to your parking',
//                       controller: nearestController,
//                     ),
//                     const SizedBox(
//                       height: 18.0,
//                     ),
//                     Padding(
//                       padding: const EdgeInsetsDirectional.only(
//                         bottom: 25.0,
//                         start: 50.0,
//                       ),
//                       child: GestureDetector(
//                         onTap: () {
//
//
//                         },
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             const Text('create your parking',
//                                 style: TextStyle(
//                                   fontSize: 21,
//                                   fontWeight: FontWeight.w600,
//                                   fontFamily: 'Poppins',
//                                   color: Color(0xFFFFFFFF),
//                                 )),
//                             Image.asset('assets/images/gif.png'),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
