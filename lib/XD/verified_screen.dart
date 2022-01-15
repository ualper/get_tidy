import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_tidy/XD/ChooseServiceType.dart';

class VerifiedScreen extends StatelessWidget {
  VerifiedScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -60.6, end: -129.9),
            Pin(size: 200.6, middle: 0.6803),
            child: SvgPicture.string(
              _svg_wfpcbn,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: -60.6, end: -129.9),
            Pin(size: 356.4, middle: 0.4116),
            child: SvgPicture.string(
              _svg_b3tt0,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 34.0, end: 30.0),
            Pin(size: 138.0, middle: 0.4614),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Your account\n has been verified\nsuccessfully',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 36,
                      color: const Color(0xff022c43),
                      fontWeight: FontWeight.w500,
                      height: 1.25,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(ChooseServiceType());
            },
            child: Pinned.fromPins(
              Pin(size: 70.0, start: 165.0),
              Pin(size: 70.0, start: 575.0),
              child: Image.asset('assets/drawable-xxxhdpi/Rounded_Button.png'),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 25.0, end: 38.0),
            Pin(size: 100.0, start: 30.0),
            child: Image.asset('assets/drawable-xxxhdpi/GetTidyOrange.png'),
          ),
        ],
      ),
    );
  }
}

const String _svg_wfpcbn =
    '<svg viewBox="-60.6 380.6 550.5 200.6" ><path transform="translate(-333.48, 70.44)" d="M 823.123779296875 310.1129455566406 L 328.8053588867188 311.7389526367188 C 309.8619384765625 318.7294006347656 295.146240234375 330.2019958496094 290.3096923828125 343.5234375 C 282.8815612792969 363.9826049804688 296.6717834472656 385.8193054199219 288.1211853027344 406.1090393066406 C 285.0400695800781 413.4234924316406 279.1734924316406 420.1817626953125 275.6386108398438 427.4171447753906 C 272.1036682128906 434.6506042480469 271.1632080078125 442.9300231933594 277.5523376464844 449.3771057128906 C 287.5689392089844 459.4888916015625 310.1515808105469 460.840576171875 326.5273132324219 467.0354614257812 C 343.2077026367188 473.3462524414062 352.943603515625 484.5481567382812 364.9216613769531 494.0908813476562 C 376.8937072753906 503.6336059570312 394.7652282714844 512.443359375 414.0488891601562 510.3974609375 C 442.8475646972656 507.3405151367188 453.6075134277344 483.1375732421875 481.2329406738281 477.2631530761719 C 494.38720703125 474.4659729003906 508.9059143066406 476.4381713867188 522.0603637695312 479.2390747070312 C 535.208740234375 482.0382080078125 548.1808471679688 485.6843872070312 562.063720703125 486.2552185058594 C 575.9466552734375 486.8261108398438 591.4476928710938 483.4321899414062 597.3888549804688 475.672119140625 C 605.3513793945312 465.2638549804688 619.0520629882812 455.1558227539062 636.8040771484375 451.6109008789062 C 654.5504150390625 448.0660400390625 673.6072387695312 447.7566223144531 691.586181640625 444.6905212402344 C 709.5711669921875 441.6225280761719 727.7232055664062 434.685546875 732.7241821289062 423.5996704101562 C 737.853271484375 412.2320251464844 727.8426513671875 400.6599426269531 720.4146728515625 389.785888671875 C 712.9866943359375 378.91357421875 708.9202880859375 364.7873840332031 722.6746826171875 356.5871276855469 C 736.121826171875 348.5673522949219 757.916259765625 351.1730041503906 776.25048828125 348.885986328125 C 796.6390380859375 346.3428955078125 814.2595825195312 336.63623046875 820.65478515625 324.4289245605469 C 823.0670166015625 319.8232421875 823.84619140625 314.9266662597656 823.123779296875 310.1129455566406 Z" fill="#ff7f00" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_b3tt0 =
    '<svg viewBox="-60.6 166.1 550.5 356.4" ><path transform="translate(-333.48, -143.99)" d="M 823.123779296875 666.5302734375 L 328.8053588867188 663.6410522460938 C 309.8619384765625 651.2196655273438 295.146240234375 630.8338623046875 290.3096923828125 607.1629028320312 C 282.8815612792969 570.808837890625 296.6717834472656 532.0069580078125 288.1211853027344 495.9539794921875 C 285.0400695800781 482.9568481445312 279.1734924316406 470.947998046875 275.6386108398438 458.0914306640625 C 272.1036682128906 445.2382202148438 271.1632080078125 430.5264282226562 277.5523376464844 419.070556640625 C 287.5689392089844 401.1028442382812 310.1515808105469 398.7010498046875 326.5273132324219 387.6932983398438 C 343.2077026367188 376.4795532226562 352.943603515625 356.5748291015625 364.9216613769531 339.6182250976562 C 376.8937072753906 322.6616821289062 394.7652282714844 307.007568359375 414.0488891601562 310.6429443359375 C 442.8475646972656 316.0748291015625 453.6075134277344 359.0812377929688 481.2329406738281 369.5195922851562 C 494.38720703125 374.4899291992188 508.9059143066406 370.9855346679688 522.0603637695312 366.008544921875 C 535.208740234375 361.0347290039062 548.1808471679688 354.5558471679688 562.063720703125 353.54150390625 C 575.9466552734375 352.527099609375 591.4476928710938 358.5577392578125 597.3888549804688 372.3467407226562 C 605.3513793945312 390.8412475585938 619.0520629882812 408.8023071289062 636.8040771484375 415.101318359375 C 654.5504150390625 421.4002075195312 673.6072387695312 421.9500122070312 691.586181640625 427.398193359375 C 709.5711669921875 432.8497314453125 727.7232055664062 445.1760864257812 732.7241821289062 464.8746948242188 C 737.853271484375 485.073974609375 727.8426513671875 505.6365356445312 720.4146728515625 524.958740234375 C 712.9866943359375 544.27783203125 708.9202880859375 569.3787841796875 722.6746826171875 583.9498901367188 C 736.121826171875 598.2003173828125 757.916259765625 593.5703125 776.25048828125 597.6341552734375 C 796.6390380859375 602.1529541015625 814.2595825195312 619.4008178710938 820.65478515625 641.0921020507812 C 823.0670166015625 649.2760009765625 823.84619140625 657.9767456054688 823.123779296875 666.5302734375 Z" fill="#ff7f00" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_bg6x86 =
    '<svg viewBox="17.0 11.0 16.0 16.0" ><path transform="translate(13.0, 7.0)" d="M 12 20 L 13.40999984741211 18.59000015258789 L 7.829999923706055 13 L 20 13 L 20 11 L 7.829999923706055 11 L 13.40999984741211 5.409999847412109 L 12 4 L 4 12 L 12 20 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ls7y3u =
    '<svg viewBox="217.2 7.8 21.1 19.2" ><path transform="translate(286.52, 64.55)" d="M -48.40910339355469 -50.80363845825195 C -47.41164398193359 -47.46786117553711 -49.70090484619141 -43.33084106445312 -53.33101654052734 -40.5837287902832 C -56.97747802734375 -37.83661651611328 -61.94844436645508 -36.46305847167969 -65.26786804199219 -38.58880233764648 C -68.58729553222656 -40.71454620361328 -70.25518798828125 -46.33958435058594 -68.75082397460938 -50.36213684082031 C -67.26280212402344 -54.36834335327148 -62.61886978149414 -56.77206802368164 -58.15481567382812 -56.70666122436523 C -53.69075775146484 -56.6576042175293 -49.40657043457031 -54.13941955566406 -48.40910339355469 -50.80363845825195 Z" fill="#ff7f00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';