import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Component_provider_text extends StatelessWidget {
  Component_provider_text({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(startFraction: 0.0, endFraction: 0.0),
          Pin(size: 50.0, middle: 0.4721),
          child:
              // Adobe XD layer: 'Home' (text)
              const Text.rich(
            TextSpan(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
                color: Color(0xffff7f00),
              ),
              children: [
                TextSpan(
                  text: 'I wanna be\n',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: ' Service Provider',
                  style: TextStyle(
                    color: Color(0xff2f2f2f),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
        ),
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(size: 2.0, start: 0.0),
          child: SvgPicture.string(
            _svg_u5lc3n,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(size: 2.0, end: 0.0),
          child: SvgPicture.string(
            _svg_g2vb69,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

const String _svg_u5lc3n =
    '<svg viewBox="0.0 0.0 142.0 2.0" ><path transform="translate(-2.0, -60.0)" d="M 141.6333312988281 62.00000381469727 L 4.366666316986084 62.00000381469727 C 3.059592723846436 62.00000381469727 1.99999988079071 61.55228424072266 1.99999988079071 61 C 1.99999988079071 60.44771957397461 3.059592723846436 60.00000381469727 4.366666316986084 60.00000381469727 L 141.6333312988281 60.00000381469727 C 142.9403991699219 60.00000381469727 144 60.44771957397461 144 61 C 144 61.55228424072266 142.9403991699219 62.00000381469727 141.6333312988281 62.00000381469727 Z" fill="#333333" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g2vb69 =
    '<svg viewBox="0.0 55.2 142.0 2.0" ><path transform="translate(-2.0, -4.79)" d="M 141.6333312988281 62.00000381469727 L 4.366666316986084 62.00000381469727 C 3.059592723846436 62.00000381469727 1.99999988079071 61.55228424072266 1.99999988079071 61 C 1.99999988079071 60.44771957397461 3.059592723846436 60.00000381469727 4.366666316986084 60.00000381469727 L 141.6333312988281 60.00000381469727 C 142.9403991699219 60.00000381469727 144 60.44771957397461 144 61 C 144 61.55228424072266 142.9403991699219 62.00000381469727 141.6333312988281 62.00000381469727 Z" fill="#333333" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
