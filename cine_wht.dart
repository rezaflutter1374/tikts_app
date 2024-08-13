import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(const MapLauncherDemo());

class MapLauncherDemo extends StatefulWidget {
  const MapLauncherDemo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MapLauncherDemoState createState() => _MapLauncherDemoState();
}

class _MapLauncherDemoState extends State<MapLauncherDemo> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  late LatLng _currentLocation;
  final bool _isLocationLoaded = false;

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0.0,
          toolbarHeight: 70.0,
          centerTitle: true,
          title: const Text(
            'TEHRAN',
            style: TextStyle(color: Colors.white, fontFamily: 'Vazir-Bold'),
          ),
        ),
        body: Stack(
          children: [
            _isLocationLoaded
                ? GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: _currentLocation,
                      zoom: 14.4746,
                    ),
                    onTap: (LatLng latLng) {},
                  )
                : const Center(child: CircularProgressIndicator()),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/sesa.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 200,
                left: 160,
              ),
              child: Builder(builder: (context) {
                return MaterialButton(
                  onPressed: () {
                    // Do something else if necessary
                  },
                  child: const Text(
                    'Show Maps',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Vazir-Bold',
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
