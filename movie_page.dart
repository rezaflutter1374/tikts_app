// import 'dart:async';

// // ignore: unnecessary_import
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class MapSample extends StatefulWidget {
//   const MapSample({super.key});

//   @override
//   State<MapSample> createState() => MapSampleState();
// }

// class MapSampleState extends State<MapSample> {
//   final Completer<GoogleMapController> _controller =
//       Completer<GoogleMapController>();

//   static const CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 14.4746,
//   );

//   static const CameraPosition _kLake = CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(37.43296265331129, -122.08832357078792),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //ویجت GoogleMap
//       // برای نمایش نقشه استفاده می‌شود:
//       body: GoogleMap(
//         //mapType: MapType.hybrid: نوع نقشه را به حالت هیبرید
//         // (ترکیبی از نقشه و تصاویر ماهواره‌ای) تنظیم می‌کند.
//         mapType: MapType.hybrid,
//         //initialCameraPosition: _kGooglePlex:
//         //موقعیت اولیه دوربین را تنظیم می‌کند.
//         initialCameraPosition: _kGooglePlex,

//         onMapCreated: (GoogleMapController controller) {
//           //onMapCreated: زمانی که نقشه ایجاد می‌شود
//           //، کنترلر نقشه را به Completer
//           //اختصاص می‌دهد.
//           _controller.complete(controller);
//         },
//       ),
//       //FloatingActionButton.extended برای اضافه کردن دکمه شناور که
//       // با فشار دادن آن دوربین به موقعیت دوم
//       floatingActionButton: FloatingActionButton.extended(
//         //
//         onPressed: _goToTheLake,
//         label: const Text('To the lake!'),
//         icon: const Icon(Icons.directions_boat),
//       ),
//     );
//   }

//   Future<void> _goToTheLake() async {
//     final GoogleMapController controller = await _controller.future;
//     //controller.animateCamera(
//     //CameraUpdate.
//     //newCameraPosition(_kLake)):
//     //دوربین نقشه را به موقعیت جدید انتقال می‌دهد.
//     await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//   }
// }
