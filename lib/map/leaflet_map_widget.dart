// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:latlong2/latlong.dart';
// import 'dart:math';
//
// import '../constants/colors.dart';
// import '../constants/components.dart';
//
// class MapScreen extends StatefulWidget {
//   final String searchedPlace;
//
//   const MapScreen({
//     Key? key,
//     required this.searchedPlace,
//   }) : super(key: key);
//
//   @override
//   MapScreenState createState() => MapScreenState(searchedPlace);
// }
//
// class MapScreenState extends State<MapScreen> {
//   final MapController _mapController = MapController();
//   late LatLng _centerLatLng = LatLng(0, 0);
//   final String searchedPlace;
//   List<Marker> _parkingMarkers = [];
//
//   MapScreenState(this.searchedPlace);
//
//   @override
//   void initState() {
//     super.initState();
//     _updateMapCenter();
//   }
//
//   Future<void> _updateMapCenter() async {
//     try {
//       List<Location> locations = await locationFromAddress(widget.searchedPlace);
//       if (locations.isNotEmpty) {
//         final Location firstLocation = locations.first;
//         setState(() {
//           _centerLatLng = LatLng(firstLocation.latitude, firstLocation.longitude);
//         });
//         _mapController.move(_centerLatLng, 13.0);
//         _loadParkingMarkers();
//       } else {
//         // Handle case when no locations are found for the searched place
//         debugPrint('No locations found for the searched place');
//       }
//     } catch (e) {
//       // Handle any errors that occur during geocoding
//       debugPrint('Error geocoding the searched place: $e');
//     }
//   }
//
//   Future<void> _loadParkingMarkers() async {
//     List<ParkingLocation> parkingLocations = _generateRandomParkingLocations();
//
//     List<Marker> markers = parkingLocations.map((location) {
//       return Marker(
//         width: 30.0,
//         height: 30.0,
//         point: LatLng(location.latitude, location.longitude),
//         builder: (ctx) => GestureDetector(
//           child: const Icon(Icons.local_parking, color: Colors.blue),
//           onTap: () {
//             // Handle marker tap event
//           },
//         ),
//       );
//     }).toList();
//
//     setState(() {
//       _parkingMarkers = markers;
//     });
//   }
//
//   List<ParkingLocation> _generateRandomParkingLocations() {
//     double centerLatitude = _centerLatLng.latitude;
//     double centerLongitude = _centerLatLng.longitude;
//
//     List<ParkingLocation> parkingLocations = [];
//
//     Random random = Random();
//     int numMarkers = random.nextInt(3) + 5; // Random number between 5 and 7
//
//     for (int i = 0; i < numMarkers; i++) {
//       double offsetLat;
//       double offsetLng;
//
//       if (i < numMarkers - 2) {
//         // Generate markers closer to the red marker
//         offsetLat = (random.nextDouble() - 0.5) * 0.001 * 2; // Vicinity radius: 0.001
//         offsetLng = (random.nextDouble() - 0.5) * 0.001 * 2;
//       } else {
//         // Generate markers further away from the red marker
//         offsetLat = (random.nextDouble() - 0.5) * 0.01 * 2; // Vicinity radius: 0.01
//         offsetLng = (random.nextDouble() - 0.5) * 0.01 * 2;
//       }
//
//       double parkingLat = centerLatitude + offsetLat;
//       double parkingLng = centerLongitude + offsetLng;
//
//       parkingLocations.add(ParkingLocation(latitude: parkingLat, longitude: parkingLng));
//     }
//
//     return parkingLocations;
//   }
//
//
//   void _addPlaceToPlan(LatLng location) {
//     dynamic latitude = location.latitude;
//     dynamic longitude = location.longitude;
//
//     debugPrint('name: $searchedPlace');
//     debugPrint('lat: $latitude');
//     debugPrint('lon: $longitude');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           FlutterMap(
//             mapController: _mapController,
//             options: MapOptions(
//               center: _centerLatLng,
//               zoom: 13.0,
//             ),
//             layers: [
//               TileLayerOptions(
//                 urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
//                 subdomains: ['a', 'b', 'c'],
//               ),
//               MarkerLayerOptions(
//                 markers: [
//                   Marker(
//                     width: 30.0,
//                     height: 30.0,
//                     point: _centerLatLng,
//                     builder: (ctx) => GestureDetector(
//                       child: const Icon(Icons.location_on, color: Colors.red),
//                       onTap: () {
//                         _addPlaceToPlan(_centerLatLng);
//                       },
//                     ),
//                   ),
//                   ..._parkingMarkers,
//                 ],
//               ),
//             ],
//           ),
//           Positioned(
//             top: screenHeight(context, .04),
//             left: screenWidth(context, .04),
//             child: Container(
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: defaultColor,
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(5),
//                 child: IconButton(
//                   icon: const Icon(
//                     Icons.arrow_back,
//                     color: Colors.white,
//                   ),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ParkingLocation {
//   final double latitude;
//   final double longitude;
//
//   ParkingLocation({required this.latitude, required this.longitude});
// }


import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geocoding/geocoding.dart';
import 'package:latlong2/latlong.dart';
import '../CarDetails/CarDetailsNT/car_details_NT.dart';

class MapScreen extends StatefulWidget {
  final String searchedPlace;

  const MapScreen({
    Key? key,
    required this.searchedPlace,
  }) : super(key: key);

  @override
  MapScreenState createState() => MapScreenState(searchedPlace);
}

class MapScreenState extends State<MapScreen> {
  final MapController _mapController = MapController();
  late LatLng _centerLatLng = LatLng(0, 0);
  final String searchedPlace;

  MapScreenState(this.searchedPlace);

  @override
  void initState() {
    super.initState();
    _updateMapCenter();
  }

  Future<void> _updateMapCenter() async {
    try {
      List<Location> locations =
      await locationFromAddress(widget.searchedPlace);
      if (locations.isNotEmpty) {
        final Location firstLocation = locations.first;
        setState(() {
          _centerLatLng =
              LatLng(firstLocation.latitude, firstLocation.longitude);
        });
        _mapController.move(_centerLatLng, 13.0);
      } else {
        // Handle case when no locations are found for the searched place
        debugPrint('No locations found for the searched place');
      }
    } catch (e) {
      // Handle any errors that occur during geocoding
      debugPrint('Error geocoding the searched place: $e');
    }
  }

  void _addPlaceToPlan(LatLng location) {
    // Retrieve the latitude and longitude values
    dynamic latitude = location.latitude;
    dynamic longitude = location.longitude;

    debugPrint('name: $searchedPlace');
    debugPrint('lat: $latitude');
    debugPrint('lon: $longitude');
  }

  List<Marker> _generateRandomParkingMarkers() {
    final List<Marker> markers = [];
    final int numberOfMarkers = 5 + (DateTime.now().millisecond % 3); // Generate a random number of markers between 5 and 7
    final double offset = 0.002; // Define the offset for generating nearby markers

    for (int i = 0; i < numberOfMarkers; i++) {
      final double radius = (i + 1) * offset;
      final double angle = 2 * pi * i / numberOfMarkers;
      final double randomLat = _centerLatLng.latitude + (radius * cos(angle));
      final double randomLng = _centerLatLng.longitude + (radius * sin(angle));

      final Marker marker = Marker(
        width: 30.0,
        height: 30.0,
        point: LatLng(randomLat, randomLng),
        builder: (ctx) => GestureDetector(
          child: const Icon(Icons.location_on, color: Colors.blue),
          onTap: () {
            _navigateToParkingDetailsScreen();
          },
        ),
      );

      markers.add(marker);
    }

    return markers;
  }

  void _navigateToParkingDetailsScreen() {
    // Navigate to the ParkingDetailsScreen and pass the required parameters
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ParkingDetailsScreen(
          id: 'your_parking_id',
          name: 'El-Abd',
          desc: 'Description',
          img: 'path_to_parking_image',
          rate: '4',
          fullCapacity: '200',
          nearest: ['hospital', 'cinema'],
          availableCapacity: '1',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        mapController: _mapController,
        options: MapOptions(
          center: _centerLatLng,
          zoom: 13.0,
          minZoom: 5.0,
          maxZoom: 18.0,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayerOptions(markers: [
            Marker(
              width: 30.0,
              height: 30.0,
              point: _centerLatLng,
              builder: (ctx) => const Icon(Icons.location_on, color: Colors.red),
            ),
            ..._generateRandomParkingMarkers(),
          ]),
        ],
      ),
    );
  }
}
