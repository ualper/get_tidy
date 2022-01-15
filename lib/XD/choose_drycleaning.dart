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

class ChooseDrycleaning extends StatefulWidget {
  double latitude_current = 0;
  double longitude_current = 0;

  ChooseDrycleaning({Key? key, required this.latitude_current, required this.longitude_current}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ChooseDrycleaning> {
  final Completer<GoogleMapController> _controller = Completer();

  //--------------------------------------------------------------
  //--------------------------------------------------------------
  String companyName = 'Get Tidy Dry Cleaning';
  String companyLogo = 'assets/drawable-xxxhdpi/icon_dry_full.png';
  String companyRating = '4.2';
  //--------------------------------------------------------------
  var companyAdress = 'Adress of Company';
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
          title: 'COMPANY 1',
          snippet: 'Service at : $companyAdress',
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
            title: 'COMPANY 2',
            snippet: 'Service at : $companyAdress',
            onTap: () {
              showGetxBottomSheet();
            },
          ));

      marker3 = Marker(
          markerId: MarkerId('Mrk 3'),
          position: LatLng(41.0023, 28.973),
          icon: BitmapDescriptor.defaultMarker,
          infoWindow: InfoWindow(
            title: 'COMPANY 3',
            snippet: 'Service at : $companyAdress',
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
          leading: Image.asset('assets/drawable-xxxhdpi/icon_dry.png'),
          title: Text(
            "Choose Dry Cleaning Service",
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
          child: ChooseDrycleaningBottomBar(
            companyName: companyName,
            companyLogo: companyLogo,
            companyRating: companyRating,
          ),
        );
      },
    );
  }
}

class CreateIroningPersonMarker {}

//-------------------------------------------
// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

class ChooseDrycleaningBottomBar extends StatelessWidget {
  String companyName = 'Get Tidy Dry Cleaning';
  String companyLogo = 'assets/drawable-xxxhdpi/icon_dry.png';
  String companyRating = '4.2';
  ChooseDrycleaningBottomBar({Key? key, required this.companyLogo, required this.companyName, required this.companyRating})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    //--------------------------------------------------------------
    //--------------------------------------------------------------
    // String companyName = 'Zeynep Hanim';
    // String companyLogo = 'assets/drawable-xxxhdpi/avatar-woman.png';
    // String companyRating = '4.3';
    //--------------------------------------------------------------
    //--------------------------------------------------------------
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              // white user area call more chat
              Pinned.fromPins(
                Pin(start: 0.0, end: 0.0),
                Pin(size: 88.0, end: 85.0),
                child: SvgPicture.string(
                  _svg_wraeec,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
              // blue area
              Pinned.fromPins(
                Pin(start: 0.0, end: 0.0),
                Pin(size: 84.0, end: 0.0),
                child:
                    // Adobe XD layer: 'BG' (shape)
                    SvgPicture.string(
                  _svg_tjox1r,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
              // REQUEST NOW BUTTON
              GestureDetector(
                //onTap: ()=> Get.to(RequestNowPage),
                child: Pinned.fromPins(
                  Pin(size: 146.0, end: 15.0),
                  Pin(size: 50.0, end: 17.0),
                  child:
                      // Adobe XD layer: 'Primary Button - Sm…' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'Button' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: const Color(0xffff7f00),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 100.0, middle: 0.5161),
                        Pin(size: 20.0, middle: 0.5278),
                        child: Text(
                          'Request Now',
                          style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 15,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // cancel request BUTTON
              GestureDetector(
                onTap: () => Get.to(ServiceRecipientMain),
                child: Pinned.fromPins(
                  Pin(size: 146.0, start: 23.0),
                  Pin(size: 50.0, end: 17.0),
                  child:
                      // Adobe XD layer: 'Button' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(width: 2.0, color: const Color(0xffffffff)),
                    ),
                  ),
                ),
              ),
              // TEXT CANCEL REQUEST
              GestureDetector(
                onTap: () => Get.to(ServiceRecipientMain),
                child: Pinned.fromPins(
                  Pin(size: 120.0, start: 40.0),
                  Pin(size: 17.0, end: 34.0),
                  child: Text(
                    'Cancel Request',
                    style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 15,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // TEXT OF COMPANY NAME
              Pinned.fromPins(
                Pin(size: 150.0, start: 20.0),
                Pin(size: 30.0, middle: 0.1),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(start: 0.0, end: 0.0),
                      child: Text(
                        companyName,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 22,
                          color: const Color(0xff313450),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              // TEXT OF CALL NOW
              Pinned.fromPins(
                Pin(size: 72.0, middle: 0.6),
                Pin(size: 17.0, end: 111.0),
                child: Text(
                  'Call Now',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: const Color(0xff898a8f),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              // rating of user
              Pinned.fromPins(
                Pin(size: 35, middle: 0.2298),
                Pin(size: 20.0, end: 100),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(size: 23.0, end: -5.0),
                      Pin(start: 0.0, end: 5),
                      //RATING OF USER
                      child: Text(
                        companyRating,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: const Color(0xff898a8f),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 15, start: 0.0),
                      Pin(size: 15, start: 0.0),
                      child:
                          // Adobe XD layer: 'star' (shape)
                          SvgPicture.string(
                        _svg_qy0sl,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              // telephone icon
              GestureDetector(
                onTap: () => Get.snackbar('Phone', 'tapped'),
                child: Pinned.fromPins(
                  Pin(size: 23.2, middle: 0.57),
                  Pin(size: 23.3, middle: 0.12),
                  child:
                      // Adobe XD layer: 'telephone-2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_j20hp,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // AVATAR ICON FOR WOMAN
              Pinned.fromPins(
                Pin(size: 55.0, start: 18.0),
                Pin(size: 55.0, end: 84.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(companyLogo),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              // telephone icon
              GestureDetector(
                onTap: () => Get.snackbar('Datetime', 'picker'),
                child: Pinned.fromPins(
                  Pin(size: 23.2, middle: 0.57),
                  Pin(size: 23.3, middle: 0.12),
                  child:
                      // Adobe XD layer: 'telephone-2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_j20hp,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

const String _svg_wraeec =
    '<svg viewBox="0.0 579.0 360.0 97.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="-1" stdDeviation="16"/></filter></defs><path transform="translate(0.0, 578.97)" d="M 0 0 L 360 0 L 360 97.0322265625 L 0 97.0322265625 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_tjox1r =
    '<svg viewBox="0.0 676.0 360.0 84.0" ><path transform="translate(0.0, 720.0)" d="M 0 -43.99999618530273 L 360 -43.99999618530273 L 360 40.00000381469727 L 0 40.00000381469727 L 0 -43.99999618530273 Z" fill="#022c43" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qy0sl =
    '<svg viewBox="0.0 0.0 11.2 10.0" ><path transform="translate(0.0, -1.32)" d="M 5.619501113891602 1.317999958992004 L 7.355801105499268 4.624496459960938 L 11.23879432678223 5.154860973358154 L 8.429043769836426 7.728454113006592 L 9.09230899810791 11.36277675628662 L 5.619501113891602 9.64698314666748 L 2.146484851837158 11.36277675628662 L 2.809750556945801 7.728454113006592 L 0 5.154860973358154 L 3.882993221282959 4.624496459960938 L 5.619501113891602 1.317999958992004 Z" fill="#efce4a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_j20hp =
    '<svg viewBox="0.0 0.0 22.2 22.3" ><path transform="translate(-0.91, 0.0)" d="M 5.409077167510986 14.80888652801514 C 7.606406688690186 17.43552780151367 10.25151252746582 19.50360488891602 13.27053546905518 20.96694946289062 C 14.41997909545898 21.51166725158691 15.95718765258789 22.15793800354004 17.66981315612793 22.26873207092285 C 17.77598571777344 22.27334594726562 17.87754440307617 22.27796363830566 17.98371696472168 22.27796363830566 C 19.1331615447998 22.27796363830566 20.05641174316406 21.88096809387207 20.80885887145996 21.06389617919922 C 20.81347465515137 21.05927848815918 20.82270431518555 21.05004501342773 20.82732391357422 21.04081344604492 C 21.09506416320801 20.71767616271973 21.39973831176758 20.42685127258301 21.71825981140137 20.1175651550293 C 21.93522071838379 19.90983390808105 22.15679931640625 19.69286918640137 22.36914825439453 19.47129249572754 C 23.3524055480957 18.44648551940918 23.3524055480957 17.14470481872559 22.35991477966309 16.15221405029297 L 19.58555221557617 13.37785530090332 C 19.11469459533691 12.8885326385498 18.55151176452637 12.63002395629883 17.96063232421875 12.63002395629883 C 17.3697566986084 12.63002395629883 16.80195999145508 12.8885326385498 16.31725311279297 13.37323760986328 L 14.66464138031006 15.02584934234619 C 14.51230525970459 14.93814277648926 14.35535049438477 14.85966777801514 14.20763206481934 14.78580665588379 C 14.02298069000244 14.69347953796387 13.85218143463135 14.60577201843262 13.6998462677002 14.50883102416992 C 12.19495010375977 13.55327033996582 10.82854270935059 12.30688190460205 9.522147178649902 10.70504760742188 C 8.862024307250977 9.869508743286133 8.418865203857422 9.167839050292969 8.109578132629395 8.452322006225586 C 8.543502807617188 8.059942245483398 8.949733734130859 7.649094581604004 9.34211254119873 7.247484683990479 C 9.48060131072998 7.104378700256348 9.623703956604004 6.961276054382324 9.766807556152344 6.818171977996826 C 10.26536178588867 6.319617748260498 10.53310298919678 5.742588043212891 10.53310298919678 5.156325817108154 C 10.53310298919678 4.570063591003418 10.26997852325439 3.993032932281494 9.766807556152344 3.494478702545166 L 8.391168594360352 2.118839263916016 C 8.229598999023438 1.957271337509155 8.077262878417969 1.800318956375122 7.92031192779541 1.638750314712524 C 7.615637302398682 1.324846029281616 7.297118186950684 1.00170910358429 6.983212947845459 0.7108858823776245 C 6.507740497589111 0.244645431637764 5.949175834655762 -1.52587872435106e-05 5.358297824859619 -1.52587872435106e-05 C 4.772034168243408 -1.52587872435106e-05 4.208853721618652 0.2446455061435699 3.714915990829468 0.7155023217201233 L 1.988440752029419 2.441976547241211 C 1.360631942749023 3.069784879684448 1.005181193351746 3.831464529037476 0.9313215017318726 4.713167190551758 C 0.8436129093170166 5.816449165344238 1.046727538108826 6.988973617553711 1.572978854179382 8.406159400939941 C 2.380822420120239 10.59887599945068 3.599510192871094 12.63463878631592 5.409077167510986 14.80888652801514 Z M 2.057685136795044 4.81010913848877 C 2.113080501556396 4.19614839553833 2.348508358001709 3.683745145797729 2.791668176651001 3.240586757659912 L 4.508910655975342 1.52334463596344 C 4.776651859283447 1.264835238456726 5.072091579437256 1.130964279174805 5.358298778533936 1.130964279174805 C 5.639889717102051 1.130964279174805 5.926095962524414 1.264835238456726 6.189221382141113 1.532577276229858 C 6.498508930206299 1.818784713745117 6.789332866668701 2.118840217590332 7.103236198425293 2.437360763549805 C 7.260188102722168 2.598929166793823 7.421757698059082 2.760497570037842 7.583324909210205 2.926682472229004 L 8.958966255187988 4.302322387695312 C 9.245172500610352 4.588528156280518 9.392891883850098 4.87935209274292 9.392891883850098 5.165558815002441 C 9.392891883850098 5.451765537261963 9.245172500610352 5.742588520050049 8.958966255187988 6.028796195983887 C 8.815861701965332 6.171899795532227 8.672759056091309 6.319617748260498 8.529654502868652 6.46272087097168 C 8.100345611572266 6.896647930145264 7.69873046875 7.307493209838867 7.255572319030762 7.699875354766846 C 7.246338844299316 7.709106922149658 7.24172306060791 7.713723659515381 7.232491493225098 7.722955703735352 C 6.849341869354248 8.10610294342041 6.909354209899902 8.470787048339844 7.001678943634033 8.747761726379395 C 7.006295680999756 8.761609077453613 7.010911464691162 8.770843505859375 7.015528202056885 8.78469181060791 C 7.370977401733398 9.63869571685791 7.864916324615479 10.4511547088623 8.635828018188477 11.42056655883789 C 10.0206995010376 13.12857532501221 11.4794340133667 14.45343589782715 13.08588218688965 15.47362899780273 C 13.28438282012939 15.60288047790527 13.49673175811768 15.70443916320801 13.69522953033447 15.80599498748779 C 13.87987613677979 15.89831924438477 14.05068016052246 15.9860315322876 14.20301818847656 16.08296966552734 C 14.22147846221924 16.09220314025879 14.23532962799072 16.1014347076416 14.25379467010498 16.11066818237305 C 14.4061279296875 16.18914604187012 14.55385112762451 16.22607612609863 14.70157241821289 16.22607612609863 C 15.07086849212646 16.22607612609863 15.31091594696045 15.99064922332764 15.38938999176025 15.9121732711792 L 17.11586761474609 14.18569850921631 C 17.38360404968262 13.9179573059082 17.6744327545166 13.77485370635986 17.96063232421875 13.77485370635986 C 18.31147003173828 13.77485370635986 18.59767723083496 13.99181652069092 18.77770805358887 14.18569850921631 L 21.56130218505859 16.96467399597168 C 22.1152515411377 17.51862144470215 22.11063575744629 18.11873245239258 21.54745292663574 18.70499801635742 C 21.35357093811035 18.91272735595703 21.15045928955078 19.11122703552246 20.93349456787109 19.31895637512207 C 20.61035919189453 19.63286018371582 20.27337646484375 19.95599937438965 19.96870231628418 20.32068252563477 C 19.43783187866211 20.89309692382812 18.80540657043457 21.16083717346191 17.98833847045898 21.16083717346191 C 17.90985870361328 21.16083717346191 17.82676696777344 21.15622138977051 17.74828910827637 21.1516056060791 C 16.23416519165039 21.05466461181641 14.82621002197266 20.46378898620605 13.76908874511719 19.96061706542969 C 10.89778804779053 18.57112693786621 8.377320289611816 16.5999927520752 6.286164283752441 14.09798908233643 C 4.564304828643799 12.02529811859131 3.40562891960144 10.09570789337158 2.63933277130127 8.027633666992188 C 2.163859128952026 6.758161067962646 1.983825445175171 5.737973213195801 2.057685136795044 4.81010913848877 Z" fill="#ff7f00" stroke="#ff7f00" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
