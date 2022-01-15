import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_tidy/XD/choose_ironing_toolbar.dart';

class CheckoutProfile extends StatelessWidget {
  CheckoutProfile({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 5.0),
            Pin(size: 287.0, start: 0.0),
            child: SvgPicture.string(
              _svg_qyqsi1,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 24.0, end: 8.0),
            Pin(size: 164.0, middle: 0.302),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0x7affffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x14000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 34.0, end: 19.0),
            Pin(size: 186.0, middle: 0.2962),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0x45ffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x0b000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 14.0, end: -2.0),
            Pin(size: 188.0, middle: 0.3322),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 40.0, middle: 0.2594),
            Pin(size: 18.0, middle: 0.4394),
            child: Text(
              '3250',
              style: TextStyle(
                fontFamily: 'Microsoft YaHei UI',
                fontSize: 18,
                color: const Color(0xff022c43),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 25.0, middle: 0.7463),
            Pin(size: 18.0, middle: 0.4394),
            child: Text(
              '2.5',
              style: TextStyle(
                fontFamily: 'Microsoft YaHei UI',
                fontSize: 18,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 65.0, middle: 0.2542),
            Pin(size: 19.0, middle: 0.4656),
            child: Text(
              'Total Jobs',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                color: const Color(0x78000000),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, middle: 0.7562),
            Pin(size: 19.0, middle: 0.4656),
            child: Text(
              'Years',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                color: const Color(0x78022c43),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 14.5, end: -2.5),
            Pin(size: 1.0, middle: 0.4038),
            child: SvgPicture.string(
              _svg_vy0iv2,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 51.3, middle: 0.5095),
            Pin(size: 21.7, middle: 0.3246),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 21.0, end: 0.0),
                  Pin(start: 0.7, end: 0.0),
                  child: Text(
                    '4.2',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      color: const Color(0xff898a8f),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 22.1, start: 0.0),
                  Pin(start: 0.0, end: 0.7),
                  child:
                      // Adobe XD layer: 'star' (shape)
                      SvgPicture.string(
                    _svg_ritbyw,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 106.0, middle: 0.5315),
            Pin(size: 29.0, middle: 0.3598),
            child: Text(
              'Ahmet Bey',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 22,
                color: const Color(0xff022c43),
                height: 1.6363636363636365,
              ),
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.5251),
            Pin(size: 71.0, middle: 0.4448),
            child: SvgPicture.string(
              _svg_tjmdb0,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 261.8, start: 43.7),
            Pin(size: 31.7, end: 46.2),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    ' COMMENT : Service good,',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      color: const Color(0xff9a9a9a),
                      height: 1.5833333333333333,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Container(),
          Pinned.fromPins(
            Pin(size: 81.0, start: 43.7),
            Pin(size: 15.0, end: 86.0),
            child: Text(
              'Ayse Hanim',
              style: TextStyle(
                fontFamily: 'Microsoft YaHei UI',
                fontSize: 15,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 95.1, middle: 0.7303),
            Pin(size: 14.0, end: 92.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 15.1, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Favorites' (shape)
                      SvgPicture.string(
                    _svg_ryy2a1,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.1, middle: 0.25),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Favorites' (shape)
                      SvgPicture.string(
                    _svg_phm9v,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.1, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Favorites' (shape)
                      SvgPicture.string(
                    _svg_awi7i5,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.1, middle: 0.75),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Favorites' (shape)
                      SvgPicture.string(
                    _svg_nii1a5,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.1, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Favorites' (shape)
                      SvgPicture.string(
                    _svg_qo5qm2,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 14.0, end: 8.0),
            Pin(size: 127.4, middle: 0.7141),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 8.4),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: const Color(0xfffcfcfc),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 6.5, end: 0.0),
                  Pin(start: 1.4, end: 8.2),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.9),
                        Pin(size: 1.0, middle: 0.7652),
                        child: SvgPicture.string(
                          _svg_pc77yq,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.9),
                        Pin(size: 1.0, middle: 0.4906),
                        child: SvgPicture.string(
                          _svg_axcsv,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.9, end: 0.0),
                        Pin(size: 1.0, middle: 0.2433),
                        child: SvgPicture.string(
                          _svg_e2nyed,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 107.0, middle: 0.3272),
                        Pin(size: 13.0, start: 0.0),
                        child: Text(
                          '+91 931 488 2375',
                          style: TextStyle(
                            fontFamily: 'Proxima Nova Alt',
                            fontSize: 13,
                            color: const Color(0xff404040),
                            letterSpacing: 0.13,
                            height: 1.6153846153846154,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 100.0, middle: 0.3177),
                        Pin(size: 13.0, middle: 0.2704),
                        child: Text(
                          'Alex@getfix.com',
                          style: TextStyle(
                            fontFamily: 'Proxima Nova Alt',
                            fontSize: 13,
                            color: const Color(0xff404040),
                            letterSpacing: 0.13,
                            height: 1.6153846153846154,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 120.0, middle: 0.3465),
                        Pin(size: 13.0, middle: 0.6038),
                        child: Text(
                          'English and Apanish',
                          style: TextStyle(
                            fontFamily: 'Proxima Nova Alt',
                            fontSize: 13,
                            color: const Color(0xff404040),
                            letterSpacing: 0.13,
                            height: 1.6153846153846154,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 168.0, middle: 0.4426),
                        Pin(size: 13.0, end: 0.0),
                        child: Text(
                          'RM8 NL, PO3457, New York',
                          style: TextStyle(
                            fontFamily: 'Proxima Nova Alt',
                            fontSize: 13,
                            color: const Color(0xff404040),
                            letterSpacing: 0.13,
                            height: 1.6153846153846154,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(),
          Pinned.fromPins(
            Pin(size: 119.0, middle: 0.5311),
            Pin(size: 119.0, start: 111.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_qyqsi1 =
    '<svg viewBox="0.0 0.0 375.0 287.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path  d="M 0 0 L 375 0 L 375 287 L 0 287 L 0 0 Z" fill="#ff7f00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_ritbyw =
    '<svg viewBox="0.0 0.3 22.1 21.0" ><path transform="translate(0.0, -0.98)" d="M 11.03089904785156 1.317999958992004 L 14.43920040130615 8.224700927734375 L 22.0613899230957 9.332541465759277 L 16.54594039916992 14.70833301544189 L 17.84790992736816 22.29980659484863 L 11.03089904785156 18.7158088684082 L 4.213480472564697 22.29980659484863 L 5.515449523925781 14.70833301544189 L 0 9.332541465759277 L 7.622190475463867 8.224700927734375 L 11.03089904785156 1.317999958992004 Z" fill="#efce4a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vy0iv2 =
    '<svg viewBox="14.5 306.5 348.0 1.0" ><path transform="translate(14.5, 306.5)" d="M 0 0 L 348 0" fill="none" fill-opacity="0.34" stroke="#a5a5a5" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tjmdb0 =
    '<svg viewBox="188.5 306.5 1.0 71.0" ><path transform="translate(188.5, 306.5)" d="M 0 0 L 0 71" fill="none" fill-opacity="0.34" stroke="#a5a5a5" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ryy2a1 =
    '<svg viewBox="96.0 662.0 15.1 14.0" ><path transform="translate(86.0, 659.0)" d="M 20.06035804748535 7.887477874755859 C 19.79689788818359 7.888903617858887 19.56216621398926 7.723835945129395 19.47795104980469 7.477917671203613 L 18.12086486816406 3.410040855407715 C 18.03565979003906 3.164781093597412 17.80160903930664 3 17.53845977783203 3 C 17.27530670166016 3 17.041259765625 3.164781093597412 16.9560546875 3.410040855407715 L 15.59896564483643 7.477917671203613 C 15.51475143432617 7.723835945129395 15.28002166748047 7.888903617858887 15.01655864715576 7.887477874755859 L 10.61089897155762 7.887477874755859 C 10.3491325378418 7.881691932678223 10.11404037475586 8.044477462768555 10.03093528747559 8.289065361022949 C 9.947830200195312 8.533653259277344 10.03607654571533 8.803047180175781 10.24863624572754 8.953652381896973 L 13.82388210296631 11.48403072357178 C 14.03512382507324 11.63181114196777 14.12430763244629 11.89770889282227 14.04402542114258 12.14037132263184 L 12.68136405944824 16.22636413574219 C 12.62280082702637 16.40863227844238 12.65682506561279 16.60752105712891 12.77279186248779 16.76081466674805 C 12.88875961303711 16.91411018371582 13.07250881195068 17.00308799743652 13.26655578613281 16.99991798400879 C 13.39595699310303 16.99932289123535 13.52182674407959 16.95828056335449 13.62603092193604 16.88270378112793 L 17.17619705200195 14.37044239044189 C 17.39285850524902 14.21782779693604 17.68405914306641 14.21782779693604 17.90072250366211 14.37044239044189 L 21.45088577270508 16.88270378112793 C 21.55509185791016 16.95828056335449 21.68095970153809 16.99932289123535 21.81036186218262 16.99991798400879 C 22.0044116973877 17.00308799743652 22.18815994262695 16.91411018371582 22.30412864685059 16.76081466674805 C 22.42009353637695 16.60752105712891 22.4541187286377 16.40863227844238 22.39555549621582 16.22636413574219 L 21.03289222717285 12.14037132263184 C 20.95261001586914 11.89770889282227 21.04179573059082 11.63181114196777 21.2530345916748 11.48403072357178 L 24.82828140258789 8.953652381896973 C 25.04084205627441 8.803047180175781 25.12908935546875 8.533653259277344 25.04598426818848 8.289065361022949 C 24.96287727355957 8.044477462768555 24.72778701782227 7.881691932678223 24.46602058410645 7.887477874755859 L 20.06035804748535 7.887477874755859 Z" fill="#ff9500" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_phm9v =
    '<svg viewBox="116.0 662.0 15.1 14.0" ><path transform="translate(106.0, 659.0)" d="M 20.06035804748535 7.887477874755859 C 19.79689788818359 7.888903617858887 19.56216621398926 7.723835945129395 19.47795104980469 7.477917671203613 L 18.12086486816406 3.410040855407715 C 18.03565979003906 3.164781093597412 17.80160903930664 3 17.53845977783203 3 C 17.27530670166016 3 17.041259765625 3.164781093597412 16.9560546875 3.410040855407715 L 15.59896564483643 7.477917671203613 C 15.51475143432617 7.723835945129395 15.28002166748047 7.888903617858887 15.01655864715576 7.887477874755859 L 10.61089897155762 7.887477874755859 C 10.3491325378418 7.881691932678223 10.11404037475586 8.044477462768555 10.03093528747559 8.289065361022949 C 9.947830200195312 8.533653259277344 10.03607654571533 8.803047180175781 10.24863624572754 8.953652381896973 L 13.82388210296631 11.48403072357178 C 14.03512382507324 11.63181114196777 14.12430763244629 11.89770889282227 14.04402542114258 12.14037132263184 L 12.68136405944824 16.22636413574219 C 12.62280082702637 16.40863227844238 12.65682506561279 16.60752105712891 12.77279186248779 16.76081466674805 C 12.88875961303711 16.91411018371582 13.07250881195068 17.00308799743652 13.26655578613281 16.99991798400879 C 13.39595699310303 16.99932289123535 13.52182674407959 16.95828056335449 13.62603092193604 16.88270378112793 L 17.17619705200195 14.37044239044189 C 17.39285850524902 14.21782779693604 17.68405914306641 14.21782779693604 17.90072250366211 14.37044239044189 L 21.45088577270508 16.88270378112793 C 21.55509185791016 16.95828056335449 21.68095970153809 16.99932289123535 21.81036186218262 16.99991798400879 C 22.0044116973877 17.00308799743652 22.18815994262695 16.91411018371582 22.30412864685059 16.76081466674805 C 22.42009353637695 16.60752105712891 22.4541187286377 16.40863227844238 22.39555549621582 16.22636413574219 L 21.03289222717285 12.14037132263184 C 20.95261001586914 11.89770889282227 21.04179573059082 11.63181114196777 21.2530345916748 11.48403072357178 L 24.82828140258789 8.953652381896973 C 25.04084205627441 8.803047180175781 25.12908935546875 8.533653259277344 25.04598426818848 8.289065361022949 C 24.96287727355957 8.044477462768555 24.72778701782227 7.881691932678223 24.46602058410645 7.887477874755859 L 20.06035804748535 7.887477874755859 Z" fill="#ff9500" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_awi7i5 =
    '<svg viewBox="136.0 662.0 15.1 14.0" ><path transform="translate(126.0, 659.0)" d="M 20.06035804748535 7.887477874755859 C 19.79689788818359 7.888903617858887 19.56216621398926 7.723835945129395 19.47795104980469 7.477917671203613 L 18.12086486816406 3.410040855407715 C 18.03565979003906 3.164781093597412 17.80160903930664 3 17.53845977783203 3 C 17.27530670166016 3 17.041259765625 3.164781093597412 16.9560546875 3.410040855407715 L 15.59896564483643 7.477917671203613 C 15.51475143432617 7.723835945129395 15.28002166748047 7.888903617858887 15.01655864715576 7.887477874755859 L 10.61089897155762 7.887477874755859 C 10.3491325378418 7.881691932678223 10.11404037475586 8.044477462768555 10.03093528747559 8.289065361022949 C 9.947830200195312 8.533653259277344 10.03607654571533 8.803047180175781 10.24863624572754 8.953652381896973 L 13.82388210296631 11.48403072357178 C 14.03512382507324 11.63181114196777 14.12430763244629 11.89770889282227 14.04402542114258 12.14037132263184 L 12.68136405944824 16.22636413574219 C 12.62280082702637 16.40863227844238 12.65682506561279 16.60752105712891 12.77279186248779 16.76081466674805 C 12.88875961303711 16.91411018371582 13.07250881195068 17.00308799743652 13.26655578613281 16.99991798400879 C 13.39595699310303 16.99932289123535 13.52182674407959 16.95828056335449 13.62603092193604 16.88270378112793 L 17.17619705200195 14.37044239044189 C 17.39285850524902 14.21782779693604 17.68405914306641 14.21782779693604 17.90072250366211 14.37044239044189 L 21.45088577270508 16.88270378112793 C 21.55509185791016 16.95828056335449 21.68095970153809 16.99932289123535 21.81036186218262 16.99991798400879 C 22.0044116973877 17.00308799743652 22.18815994262695 16.91411018371582 22.30412864685059 16.76081466674805 C 22.42009353637695 16.60752105712891 22.4541187286377 16.40863227844238 22.39555549621582 16.22636413574219 L 21.03289222717285 12.14037132263184 C 20.95261001586914 11.89770889282227 21.04179573059082 11.63181114196777 21.2530345916748 11.48403072357178 L 24.82828140258789 8.953652381896973 C 25.04084205627441 8.803047180175781 25.12908935546875 8.533653259277344 25.04598426818848 8.289065361022949 C 24.96287727355957 8.044477462768555 24.72778701782227 7.881691932678223 24.46602058410645 7.887477874755859 L 20.06035804748535 7.887477874755859 Z" fill="#ff9500" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nii1a5 =
    '<svg viewBox="156.0 662.0 15.1 14.0" ><path transform="translate(146.0, 659.0)" d="M 20.06035804748535 7.887477874755859 C 19.79689788818359 7.888903617858887 19.56216621398926 7.723835945129395 19.47795104980469 7.477917671203613 L 18.12086486816406 3.410040855407715 C 18.03565979003906 3.164781093597412 17.80160903930664 3 17.53845977783203 3 C 17.27530670166016 3 17.041259765625 3.164781093597412 16.9560546875 3.410040855407715 L 15.59896564483643 7.477917671203613 C 15.51475143432617 7.723835945129395 15.28002166748047 7.888903617858887 15.01655864715576 7.887477874755859 L 10.61089897155762 7.887477874755859 C 10.3491325378418 7.881691932678223 10.11404037475586 8.044477462768555 10.03093528747559 8.289065361022949 C 9.947830200195312 8.533653259277344 10.03607654571533 8.803047180175781 10.24863624572754 8.953652381896973 L 13.82388210296631 11.48403072357178 C 14.03512382507324 11.63181114196777 14.12430763244629 11.89770889282227 14.04402542114258 12.14037132263184 L 12.68136405944824 16.22636413574219 C 12.62280082702637 16.40863227844238 12.65682506561279 16.60752105712891 12.77279186248779 16.76081466674805 C 12.88875961303711 16.91411018371582 13.07250881195068 17.00308799743652 13.26655578613281 16.99991798400879 C 13.39595699310303 16.99932289123535 13.52182674407959 16.95828056335449 13.62603092193604 16.88270378112793 L 17.17619705200195 14.37044239044189 C 17.39285850524902 14.21782779693604 17.68405914306641 14.21782779693604 17.90072250366211 14.37044239044189 L 21.45088577270508 16.88270378112793 C 21.55509185791016 16.95828056335449 21.68095970153809 16.99932289123535 21.81036186218262 16.99991798400879 C 22.0044116973877 17.00308799743652 22.18815994262695 16.91411018371582 22.30412864685059 16.76081466674805 C 22.42009353637695 16.60752105712891 22.4541187286377 16.40863227844238 22.39555549621582 16.22636413574219 L 21.03289222717285 12.14037132263184 C 20.95261001586914 11.89770889282227 21.04179573059082 11.63181114196777 21.2530345916748 11.48403072357178 L 24.82828140258789 8.953652381896973 C 25.04084205627441 8.803047180175781 25.12908935546875 8.533653259277344 25.04598426818848 8.289065361022949 C 24.96287727355957 8.044477462768555 24.72778701782227 7.881691932678223 24.46602058410645 7.887477874755859 L 20.06035804748535 7.887477874755859 Z" fill="#ff9500" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qo5qm2 =
    '<svg viewBox="176.0 662.0 15.1 14.0" ><path transform="translate(166.0, 659.0)" d="M 20.06035804748535 7.887477874755859 C 19.79689788818359 7.888903617858887 19.56216621398926 7.723835945129395 19.47795104980469 7.477917671203613 L 18.12086486816406 3.410040855407715 C 18.03565979003906 3.164781093597412 17.80160903930664 3 17.53845977783203 3 C 17.27530670166016 3 17.041259765625 3.164781093597412 16.9560546875 3.410040855407715 L 15.59896564483643 7.477917671203613 C 15.51475143432617 7.723835945129395 15.28002166748047 7.888903617858887 15.01655864715576 7.887477874755859 L 10.61089897155762 7.887477874755859 C 10.3491325378418 7.881691932678223 10.11404037475586 8.044477462768555 10.03093528747559 8.289065361022949 C 9.947830200195312 8.533653259277344 10.03607654571533 8.803047180175781 10.24863624572754 8.953652381896973 L 13.82388210296631 11.48403072357178 C 14.03512382507324 11.63181114196777 14.12430763244629 11.89770889282227 14.04402542114258 12.14037132263184 L 12.68136405944824 16.22636413574219 C 12.62280082702637 16.40863227844238 12.65682506561279 16.60752105712891 12.77279186248779 16.76081466674805 C 12.88875961303711 16.91411018371582 13.07250881195068 17.00308799743652 13.26655578613281 16.99991798400879 C 13.39595699310303 16.99932289123535 13.52182674407959 16.95828056335449 13.62603092193604 16.88270378112793 L 17.17619705200195 14.37044239044189 C 17.39285850524902 14.21782779693604 17.68405914306641 14.21782779693604 17.90072250366211 14.37044239044189 L 21.45088577270508 16.88270378112793 C 21.55509185791016 16.95828056335449 21.68095970153809 16.99932289123535 21.81036186218262 16.99991798400879 C 22.0044116973877 17.00308799743652 22.18815994262695 16.91411018371582 22.30412864685059 16.76081466674805 C 22.42009353637695 16.60752105712891 22.4541187286377 16.40863227844238 22.39555549621582 16.22636413574219 L 21.03289222717285 12.14037132263184 C 20.95261001586914 11.89770889282227 21.04179573059082 11.63181114196777 21.2530345916748 11.48403072357178 L 24.82828140258789 8.953652381896973 C 25.04084205627441 8.803047180175781 25.12908935546875 8.533653259277344 25.04598426818848 8.289065361022949 C 24.96287727355957 8.044477462768555 24.72778701782227 7.881691932678223 24.46602058410645 7.887477874755859 L 20.06035804748535 7.887477874755859 Z" fill="#d9d9d9" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pc77yq =
    '<svg viewBox="0.0 89.4 330.6 1.0" ><path transform="translate(0.0, 89.36)" d="M 0 0 L 330.565673828125 0" fill="none" fill-opacity="0.1" stroke="#707070" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_axcsv =
    '<svg viewBox="0.0 57.3 330.6 1.0" ><path transform="translate(0.0, 57.29)" d="M 0 0 L 330.565673828125 0" fill="none" fill-opacity="0.1" stroke="#707070" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e2nyed =
    '<svg viewBox="0.9 28.4 330.6 1.0" ><path transform="translate(0.91, 28.41)" d="M 0 0 L 330.565673828125 0" fill="none" fill-opacity="0.1" stroke="#707070" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
