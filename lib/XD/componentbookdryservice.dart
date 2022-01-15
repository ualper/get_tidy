import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class componentbookdryservice extends StatelessWidget {
  componentbookdryservice({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(size: 350.0, start: 45.3),
          Pin(size: 24.0, middle: 0.45),
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 27,
                color: const Color(0xffffffff),
                height: 1.4444444444444444,
              ),
              children: [
                TextSpan(
                  text: 'Book Your Service',
                  style: TextStyle(
                    fontSize: 18,
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
      ],
    );
  }
}
