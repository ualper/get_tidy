// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapTest extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<GoogleMapTest> {
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = LatLng(45.521563, -122.677433);
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Maps Sample App'),
          backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: const CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}



// class MapTest extends StatefulWidget {
//   MapTest({Key? key}) : super(key: key);

//   @override
//   _MapTestState createState() => _MapTestState();
// }

// class _MapTestState extends State<MapTest> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//           children: <Widget>[
//           GoogleMap(
//           onMapCreated: _onMapCreated,
//           initialCameraPosition: CameraPosition(
//           target: _center,
//           zoom: 11.0,
//           ),
//           ),
//           Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Align(
//           alignment: Alignment.topRight,
//           child: FloatingActionButton(
//           onPressed: () => print(‘button pressed’),
//           materialTapTargetSize: MaterialTapTargetSize.padded,
//           backgroundColor: Colors.green,
//           child: const Icon(Icons.map, size: 36.0),
//           ),
//           ),
//           ),
//           ],
//           )
//     );
//   }
// }


