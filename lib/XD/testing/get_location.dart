import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MyLocation extends StatefulWidget {
  @override
  State<MyLocation> createState() => MapSampleState();
}

class MapSampleState extends State<MyLocation> {
  var location = Location();
  final Map<PolylineId, Polyline> _mapPolylines = {};
  final int _polylineIdCounter = 1;

  static double latitude_current = 31.9414246;
  static double longitude_current = 35.8880857;

  void _GetDeviceLocation() async {
    var location = new Location();
    location.changeSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 0,
      interval: 100,
    );
    location.onLocationChanged.listen((LocationData currentLocation) {
      latitude_current = currentLocation.latitude!;
      longitude_current = currentLocation.longitude!;
    });
  }

  Future<Location> GetCurrentLocation(Location currentLocation) async {
    var location = new Location();

    location.changeSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 0,
      interval: 100,
    );
    location.onLocationChanged.listen((LocationData currentLocation) {
      latitude_current = currentLocation.latitude!;
      longitude_current = currentLocation.longitude!;
      print('latitude_current --  longitude_current');
      // _goToTheLake();
    });
    currentLocation = location;
    return currentLocation;
  }

  final Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kLake = CameraPosition(
      bearing: 60.8334901395799,
      target: LatLng(latitude_current, longitude_current),
      tilt: 80.440717697143555,
      zoom: 18.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Maps"),
        actions: <Widget>[IconButton(icon: Icon(Icons.add), onPressed: _GetDeviceLocation)],
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(latitude_current, longitude_current),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) async {
          _GetDeviceLocation();
          _controller.complete(controller);
        },
        myLocationEnabled: true,
        polylines: Set<Polyline>.of(_mapPolylines.values),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          //_goToTheLake;
          print('$latitude_current  $longitude_current');
          _getLocation();
        },
        label: Text('My Loc'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    _GetDeviceLocation();
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  Future<Map<String, double>> _getLocation() async {
//var currentLocation = <String, double>{};
    Map<String, double> currentLocation;
    try {
      currentLocation = (await location.getLocation()) as Map<String, double>;
    } catch (e) {
      currentLocation = {'longitude': 0.0};
    }
    // setState(() {
    //   userLocation = currentLocation;
    // });
    print(currentLocation.toString());
    return currentLocation;
  }
}
