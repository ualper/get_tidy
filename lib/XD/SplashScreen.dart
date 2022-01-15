// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_tidy/XD/Home1.dart';

import 'Components/component_get_tidy_splash.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //-------------------------------------
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () => Get.to(Home1()));
  }

  //-------------------------------------
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(Home1),
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Stack(
          children: <Widget>[
            Pinned.fromPins(
              Pin(start: 82.0, end: -6.0),
              Pin(start: 15.6, end: 152.4),
              child: Transform.rotate(
                angle: 0.7679,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(195.0),
                    gradient: const LinearGradient(
                      begin: Alignment(0.8, 0.67),
                      end: Alignment(-0.22, 0.03),
                      colors: [Color(0x300a72aa), Color(0x30ffd700), Color(0x00ffd700)],
                      stops: [0.0, 0.213, 1.0],
                    ),
                  ),
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 122.0, end: -61.0),
              Pin(size: 122.0, middle: 0.7855),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: const Color(0xffff7f00),
                  border: Border.all(width: 1.0, color: const Color(0xff707070)),
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 40.0, middle: 0.4605),
              Pin(size: 150.0, start: 47.0),
              child: Transform.rotate(
                angle: 0.9599,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28.0),
                    color: const Color(0xe4ff7f00),
                    border: Border.all(width: 1.0, color: const Color(0xe4115173)),
                  ),
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 40.0, middle: 0.5395),
              Pin(size: 150.0, start: 87.0),
              child: Transform.rotate(
                angle: 0.9599,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27.0),
                    color: const Color(0xe4022c43),
                    border: Border.all(width: 1.0, color: const Color(0xe4ff7f00)),
                  ),
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 208.0, start: -60.0),
              Pin(size: 207.0, end: -55.6),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: Color(0x75022c43),
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(start: 50.0, end: 40.0),
              Pin(size: 120.0, middle: 0.455),
              child: Image.asset('assets/drawable-xxxhdpi/GetTidyOrange.png'),
              // ComponentGetTidySplash(),
            ),
          ],
        ),
      ),
    );
  }
}

const String _svg_u9ztbz =
    '<svg viewBox="228.1 311.6 21.1 19.2" ><path transform="translate(297.36, 368.27)" d="M -48.40910339355469 -50.80363845825195 C -47.41164398193359 -47.46786117553711 -49.70090484619141 -43.33084106445312 -53.33101654052734 -40.5837287902832 C -56.97747802734375 -37.83661651611328 -61.94844436645508 -36.46305847167969 -65.26786804199219 -38.58880233764648 C -68.58729553222656 -40.71454620361328 -70.25518798828125 -46.33958435058594 -68.75082397460938 -50.36213684082031 C -67.26280212402344 -54.36834335327148 -62.61886978149414 -56.77206802368164 -58.15481567382812 -56.70666122436523 C -53.69075775146484 -56.6576042175293 -49.40657043457031 -54.13941955566406 -48.40910339355469 -50.80363845825195 Z" fill="#ff7f00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
