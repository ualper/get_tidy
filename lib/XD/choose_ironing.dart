// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'dart:typed_data';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_tidy/XD/ServiceRecipientMain.dart';
import 'package:get_tidy/XD/choose_ironing_toolbar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ChooseIroning extends StatefulWidget {
  double latitude_current = 0;
  double longitude_current = 0;

  ChooseIroning({Key? key, required this.latitude_current, required this.longitude_current}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ChooseIroning> {
  final Completer<GoogleMapController> _controller = Completer();

  //--------------------------------------------------------------
  //--------------------------------------------------------------
  String userNameSurname = 'Zeynep Hanim';
  String userAvatar = 'assets/drawable-xxxhdpi/avatar-woman.png';
  String userRating = '4.3';
  //--------------------------------------------------------------
  var userAdress3 = ' this is adress of user 3';
  //--------------------------------------------------------------

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late BitmapDescriptor pinLocationIcon;

  @override
  void initState() {
    super.initState();
    // setCustomMapPin();
  }

  // void setCustomMapPin() async {
  //   pinLocationIcon = await BitmapDescriptor.fromAssetImage(
  //     ImageConfiguration(size: Size(50, 50)),
  //     'assets/drawable-xxxhdpi/icon_iron_full.jpeg',
  //   );
  // }

  static const LatLng _center = LatLng(41.0055, 28.955); // AYASOFYA :)

  final Map<String, Marker> _markers = {};
  final Set<Marker> _customMarkers = {};

  Future<void> _onMapCreated(GoogleMapController controller) async {
    setState(() {
      _markers.clear();
      Marker center, marker1, marker2, marker3;

      center = Marker(
        markerId: MarkerId('YOU'),
        position: LatLng(_center.latitude, _center.longitude),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
        infoWindow: InfoWindow(
          title: 'YOU ARE HERE!',
          snippet: 'This is your current adress.',
        ),
      );
      marker1 = Marker(
        markerId: MarkerId('Mrk 1'),
        position: LatLng(41.0057, 28.965),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(
          title: 'MARKER 1',
          snippet: 'adress of marker 1',
          onTap: () {
            showGetxBottomSheet();
          },
        ),
      );
      marker2 = Marker(
          markerId: MarkerId('Mrk 2'),
          position: LatLng(40.999, 28.95),
          icon: BitmapDescriptor.defaultMarker,
          infoWindow: InfoWindow(
            title: 'MARKER 2',
            snippet: 'adress of marker 2',
            onTap: () {
              showGetxBottomSheet();
            },
          ));

      marker3 = Marker(
          markerId: MarkerId('Mrk 3'),
          position: LatLng(41.0023, 28.973),
          icon: BitmapDescriptor.defaultMarker,
          infoWindow: InfoWindow(
            title: 'MARKER 3',
            snippet: 'Service at : $userAdress3',
            onTap: () {
              showGetxBottomSheet();
            },
          ));

      _markers['definedLocation'] = center;
      _markers['definedLocation'] = marker1;
      _markers['definedLocation'] = marker2;
      _markers['definedLocation'] = marker3;
      _customMarkers.add(center);
      _customMarkers.add(marker1);
      _customMarkers.add(marker2);
      _customMarkers.add(marker3);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Image.asset('assets/drawable-xxxhdpi/icon_iron.png'),
          title: Text(
            "Choose Ironing Service",
            style: TextStyle(
              color: Color(0xff313450),
            ),
          ),
          centerTitle: true,
          toolbarHeight: 50,
          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
          elevation: 2.00,
          backgroundColor: const Color(0xffff7f00),
        ),
        key: _scaffoldKey,
        backgroundColor: Colors.green[700],
        body: GoogleMap(
          mapType: MapType.normal,
          markers: _customMarkers, // _markers.values.toSet(),
          onMapCreated: _onMapCreated,
          compassEnabled: true,
          initialCameraPosition: const CameraPosition(
            target: _center,
            zoom: 14.5,
          ),
        ),
      ),
    );
  }

  //------------------------------------------------------------------------

  void showGetxBottomSheet() {
    showModalBottomSheet(
      context: context,
      // color is applied to main screen when modal bottom screen is displayed
      // barrierColor: Colors.greenAccent,
      //background color for modal bottom screen
      backgroundColor: Colors.white,
      //elevates modal bottom screen
      elevation: 10,
      // gives rounded corner to modal bottom screen
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          height: 180,
          child: ChooseIroningBottomBar(
            userNameSurname: userNameSurname,
            userAvatar: userAvatar,
            userRating: userRating,
          ),
        );
      },
    );
  }
}

class CreateIroningPersonMarker {}
