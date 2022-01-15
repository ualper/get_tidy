import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class ComponentGetTidySplash extends StatelessWidget {
  ComponentGetTidySplash({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 15.0),
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 74,
                color: const Color(0xffff7f00),
              ),
              children: [
                TextSpan(
                  text: 'Get',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: ' ',
                  style: TextStyle(
                    color: const Color(0xff707070),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: 'Tıdy',
                  style: TextStyle(
                    color: const Color(0xff022c43),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.left,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 203.0, start: 46.0),
          Pin(size: 16.0, end: 0.0),
          child: Text(
            'GET TIDY WITH US EASY & SIMPLE',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 12,
              color: const Color(0xff707070),
              letterSpacing: 0.528,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
