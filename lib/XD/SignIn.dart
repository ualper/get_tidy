// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_tidy/MyController.dart';
import 'package:get_tidy/XD/ChooseServiceType.dart';
import 'package:get_tidy/XD/forgot_password.dart';
import 'package:get_tidy/XD/verified_screen.dart';
import 'package:get_tidy/firebase_auth/utils/fire_auth.dart';
import 'package:get_tidy/firebase_auth/utils/fire_social.dart';
import 'package:get_tidy/firebase_auth/utils/validator.dart';
import 'package:get_tidy/user.dart';
import 'SignUp.dart';

class SignIn extends StatefulWidget {
  SignIn({
    Key? key,
  }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();
  final _registerFormKey = GlobalKey<FormState>();
  MyController mycontroller = Get.put(MyController());

  void clearTextControllers() {
    _emailTextController.clear();
    _passwordTextController.clear();
  }

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    _emailTextController.addListener(_printLatestValue);
    _passwordTextController.addListener(_printLatestValue);
  }

  void _printLatestValue() {
    print('Email: ${_emailTextController.text}');
    print('Password: ${_passwordTextController.text}');
  }

  // TODO : BOTTOM OVERFLOW WHEN KEYBOARD COMES UP

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusEmail.unfocus();
        _focusPassword.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffffffff),
        body: Stack(
          children: <Widget>[
            Pinned.fromPins(
              Pin(start: -7.2, end: -4.2),
              Pin(size: 326.0, middle: 0.3779),
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 50.8),
                    Pin(size: 232.7, end: 0.0),
                    child: SvgPicture.string(
                      _svg_cgbdgx,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 298.7, end: 0.0),
                    Pin(size: 254.7, start: 0.0),
                    child: SvgPicture.string(
                      _svg_ow247,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            Pinned.fromPins(
              Pin(start: 16.8, end: 15.8),
              Pin(start: -6.0, end: 110.0),
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 2.0, end: 0.0),
                    Pin(size: 450.0, end: 0.0),
                    child: Stack(
                      children: <Widget>[
                        Form(
                          key: _registerFormKey,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(start: 0.0, end: 0.0),
                                Pin(start: 0.0, end: 34.0),
                                child: SvgPicture.string(
                                  _svg_z4s4b,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 180.0, middle: 0.5031),
                                Pin(size: 18.0, end: 0.0),
                                child: const Text(
                                  'Don\'t have an account?',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    color: Color(0xffffffff),
                                    letterSpacing: 0.7000000000000001,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(start: 47.2, end: 46.2),
                                Pin(size: 56.0, middle: 0.5653),
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromPins(
                                      Pin(start: 0.0, end: 0.0),
                                      Pin(start: 0.0, end: 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(28.0),
                                          color: const Color(0xffff7f00),
                                          boxShadow: [
                                            const BoxShadow(
                                              color: Color(0x29000000),
                                              offset: Offset(0, 3),
                                              blurRadius: 6,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () async {
                                        setState(() {});
                                        if (_registerFormKey.currentState!.validate()) {
                                          User? user = await FireAuth.signInUsingEmailPassword(
                                            email: _emailTextController.text,
                                            password: _passwordTextController.text,
                                          );

                                          setState(() {});
                                          if (user != null) {
                                            Get.to(ChooseServiceType());
                                          }
                                        }
                                        clearTextControllers();
                                      },
                                      child: Pinned.fromPins(
                                        Pin(size: 82.0, middle: 0.5),
                                        Pin(size: 20.0, middle: 0.4706),
                                        child: const Text(
                                          'SIGN IN',
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 17,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8500000000000001,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(start: 47.0, end: 46.0),
                                Pin(size: 56.0, middle: 0.1876),
                                child: SvgPicture.string(
                                  _svg_qjyeon,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(start: 47.0, end: 46.0),
                                Pin(size: 56.0, middle: 0.3777),
                                child: SvgPicture.string(
                                  _svg_sz1th,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 240.0, middle: 0.5),
                                Pin(size: 45.0, middle: 0.197),
                                child: TextFormField(
                                  focusNode: _focusEmail,
                                  controller: _emailTextController,
                                  validator: (value) => Validator.validateEmail(
                                    email: value,
                                  ),
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    color: Color(0xff878787),
                                    letterSpacing: 1,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(92, 0, 0, 0),
                                    labelText: 'Email',
                                  ),
                                ),
                              ),
                              Pinned.fromPins(Pin(size: 240.0, middle: 0.5), Pin(size: 45.0, middle: 0.38),
                                  child: TextFormField(
                                    focusNode: _focusPassword,
                                    controller: _passwordTextController,
                                    textAlign: TextAlign.start,
                                    validator: (value) => Validator.validatePassword(
                                      password: value,
                                    ),
                                    obscureText: true,
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 16,
                                      color: Color(0xff878787),
                                      letterSpacing: 1,
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.fromLTRB(80, 0, 0, 0),
                                      labelText: 'Password',
                                    ),
                                  )),
                              Pinned.fromPins(
                                Pin(size: 122.0, middle: 0.4749),
                                Pin(size: 19.0, middle: 0.7467),
                                child: const Text(
                                  'Or Sign In with',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    color: Color(0xffa7a7a7),
                                    letterSpacing: 0.75,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 114.0, middle: 0.2328),
                                Pin(size: 15.0, middle: 0.6623),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(ForgotPassword());
                                    print('\n TODO : GET.TO FORGOT PASSWORD');
                                  },
                                  child: const Text(
                                    'Forgot Password ',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      color: Color(0xff022c43),
                                      letterSpacing: 0.6000000000000001,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // TODO : GET.TO phone login
                                  print('\n TODO : GET.TO phone login');
                                },
                                child: Pinned.fromPins(
                                  Pin(size: 98.0, end: 48.2),
                                  Pin(size: 15.0, middle: 0.6623),
                                  child: const Text(
                                    ' PHONE LOGIN',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      color: Color(0xff022c43),
                                      letterSpacing: 0.6000000000000001,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Container(),
                              Pinned.fromPins(
                                Pin(size: 64.0, start: 47.0),
                                Pin(size: 42.2, end: 64.8),
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromPins(
                                      Pin(start: 0.0, end: 0.0),
                                      Pin(start: 0.0, end: 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(29.0),
                                          color: const Color(0xff022c43),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 10.3, middle: 0.501),
                                      Pin(size: 20.5, middle: 0.5294),
                                      child:
                                          // Adobe XD layer: 'facebook' (group)
                                          Stack(
                                        children: <Widget>[
                                          Pinned.fromPins(
                                            Pin(start: 0.0, end: 0.0),
                                            Pin(start: 0.0, end: 0.0),
                                            child:
                                                // Adobe XD layer: 'XMLID_835_' (shape)
                                                SvgPicture.string(
                                              _svg_x7izrr,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () async {
                                  try {
                                    Future<UserCredential> user = FireSocial.signInWithGoogle();
                                    if (user != null) {
                                      await Future.delayed(const Duration(seconds: 5), () {
                                        Get.to(ChooseServiceType());
                                      });

                                      // Get.snackbar('BASARILI', 'GIRIS');
                                    }
                                  } catch (e) {
                                    print('Something went wrong: $e');
                                    Get.snackbar('Something ', 'Went wrong: $e');
                                  }

                                  // TODO : GET.TO GOOGLE
                                  print('\n TODO : GET.TO GOOGLE');
                                },
                                child: Pinned.fromPins(
                                  Pin(size: 64.0, middle: 0.5035),
                                  Pin(size: 42.2, end: 64.8),
                                  child: Stack(
                                    children: <Widget>[
                                      Pinned.fromPins(
                                        Pin(start: 0.0, end: 0.0),
                                        Pin(start: 0.0, end: 0.0),
                                        child: Stack(
                                          children: <Widget>[
                                            Pinned.fromPins(
                                              Pin(start: 0.0, end: 0.0),
                                              Pin(start: 0.0, end: 0.0),
                                              child: SvgPicture.string(
                                                _svg_rhaj7l,
                                                allowDrawingOutsideViewBox: true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Pinned.fromPins(
                                        Pin(size: 19.0, middle: 0.5042),
                                        Pin(size: 19.5, middle: 0.4983),
                                        child:
                                            // Adobe XD layer: 'google-plus' (group)
                                            Stack(
                                          children: <Widget>[
                                            Pinned.fromPins(
                                              Pin(start: 0.0, end: 0.0),
                                              Pin(start: 0.0, end: 0.0),
                                              child:
                                                  // Adobe XD layer: 'XMLID_512_' (shape)
                                                  SvgPicture.string(
                                                _svg_yuqej,
                                                allowDrawingOutsideViewBox: true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 64.0, end: 46.0),
                                Pin(size: 42.2, end: 64.8),
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromPins(
                                      Pin(start: 0.0, end: 0.0),
                                      Pin(start: 0.0, end: 0.0),
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromPins(
                                            Pin(start: 0.0, end: 0.0),
                                            Pin(start: 0.0, end: 0.0),
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromPins(
                                                  Pin(start: 0.0, end: 0.0),
                                                  Pin(start: 0.0, end: 0.0),
                                                  child: SvgPicture.string(
                                                    _svg_rhaj7l,
                                                    allowDrawingOutsideViewBox: true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(size: 20.1, middle: 0.4887),
                                            Pin(size: 20.1, middle: 0.5137),
                                            // Adobe XD layer: 'instagram' (group)
                                            child: GestureDetector(
                                              onTap: () => Get.to(VerifiedScreen),
                                              child: Stack(
                                                children: <Widget>[
                                                  Pinned.fromPins(
                                                    Pin(start: 0.0, end: 0.0),
                                                    Pin(start: 0.0, end: 0.0),
                                                    child:
                                                        // Adobe XD layer: 'XMLID_17_' (shape)
                                                        SvgPicture.string(
                                                      _svg_ajiaif,
                                                      allowDrawingOutsideViewBox: true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromPins(
                                                    Pin(start: 4.9, end: 4.9),
                                                    Pin(start: 4.9, end: 4.9),
                                                    child:
                                                        // Adobe XD layer: 'XMLID_81_' (shape)
                                                        SvgPicture.string(
                                                      _svg_cpe6pe,
                                                      allowDrawingOutsideViewBox: true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromPins(
                                                    Pin(size: 2.5, middle: 0.7958),
                                                    Pin(size: 2.5, middle: 0.207),
                                                    child:
                                                        // Adobe XD layer: 'XMLID_83_' (shape)
                                                        Container(
                                                      decoration: const BoxDecoration(
                                                        borderRadius: BorderRadius.all(const Radius.elliptical(9999.0, 9999.0)),
                                                        color: Color(0xffffffff),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 120.0, middle: 0.5021),
                                Pin(size: 55.0, start: 20.0),
                                child: const Text(
                                  'Sign In',
                                  style: TextStyle(
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: 33,
                                    color: Color(0xff312c66),
                                    fontWeight: FontWeight.w700,
                                    height: 1.40625,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 4.0, middle: 0.5265),
                                Pin(size: 15.0, middle: 0.6623),
                                child: const Text(
                                  '|',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: Color(0xff022c43),
                                    letterSpacing: 0.6000000000000001,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 16.0, start: 0.0),
                    Pin(size: 16.0, start: 0.0),
                    child:
                        // Adobe XD layer: 'ic_arrow_forward_24…' (shape)
                        SvgPicture.string(
                      _svg_vdrjbz,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(SignUp()),
              child: Pinned.fromPins(
                Pin(start: 57.0, end: 56.0),
                Pin(size: 56.0, end: 73.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28.0),
                    border: Border.all(width: 2.0, color: const Color(0xff022c43)),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(SignUp()),
              child: Pinned.fromPins(
                Pin(size: 74.0, middle: 0.5014),
                Pin(size: 20.0, end: 92.1),
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 17,
                    color: Color(0xff022c43),
                    letterSpacing: 0.8500000000000001,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(start: 40.0, end: 40.0),
              Pin(size: 90.0, start: 25.0),
              child: Image.asset('assets/drawable-xxxhdpi/GetTidyOrange.png'),
            ),
          ],
        ),
      ),
    );
  }
}

const String _svg_cgbdgx =
    '<svg viewBox="0.0 93.3 320.7 232.7" ><path transform="translate(-6.0, 752.0)" d="M 6 -616 L 12 -426 L 278.6666870117188 -658.6666870117188 L 326.6666870117188 -609.3333129882812 L 6 -616 Z" fill="#ff7f00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ow247 =
    '<svg viewBox="72.8 0.0 298.7 254.7" ><path transform="translate(-20.54, 752.0)" d="M 93.33334350585938 -610.6666870117188 L 129.3333435058594 -497.3333435058594 L 388 -752 L 392 -604 L 93.33334350585938 -610.6666870117188 Z" fill="#022c43" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_z4s4b =
    '<svg viewBox="0.0 0.0 325.5 443.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path  d="M 22.90618324279785 0 L 302.552490234375 0 C 315.2032165527344 0 325.4586791992188 10.74516487121582 325.4586791992188 24 L 325.4586791992188 419 C 325.4586791992188 432.2548217773438 315.2032165527344 443 302.552490234375 443 L 22.90618324279785 443 C 10.255446434021 443 0 432.2548217773438 0 419 L 0 24 C 0 10.74516487121582 10.255446434021 0 22.90618324279785 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_qjyeon =
    '<svg viewBox="47.0 79.0 232.5 56.0" ><path transform="translate(47.0, 79.0)" d="M 23.52820587158203 0 L 208.9304656982422 0 C 221.9247283935547 0 232.4586791992188 11.19288063049316 232.4586791992188 25 L 232.4586791992188 31 C 232.4586791992188 44.80712127685547 221.9247283935547 56 208.9304656982422 56 L 23.52820587158203 56 C 10.53393650054932 56 0 44.80712127685547 0 31 L 0 25 C 0 11.19288063049316 10.53393650054932 0 23.52820587158203 0 Z" fill="#000000" fill-opacity="0.0" stroke="#115173" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sz1th =
    '<svg viewBox="47.0 159.0 232.5 56.0" ><path transform="translate(47.0, 159.0)" d="M 23.52820587158203 0 L 208.9304656982422 0 C 221.9247283935547 0 232.4586791992188 11.39638710021973 232.4586791992188 25.45454406738281 L 232.4586791992188 30.54545402526855 C 232.4586791992188 44.60361480712891 221.9247283935547 56 208.9304656982422 56 L 23.52820587158203 56 C 10.53393745422363 56 0 44.60361480712891 0 30.54545402526855 L 0 25.45454406738281 C 0 11.39638710021973 10.53393745422363 0 23.52820587158203 0 Z" fill="#000000" fill-opacity="0.0" stroke="#115173" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x7izrr =
    '<svg viewBox="0.0 0.0 10.3 20.5" ><path transform="translate(-76.7, 0.0)" d="M 77.03312683105469 10.90061473846436 L 79.27663421630859 10.90061473846436 L 79.27663421630859 20.13668251037598 C 79.27663421630859 20.31903648376465 79.42437744140625 20.46679496765137 79.60673522949219 20.46679496765137 L 83.41068267822266 20.46679496765137 C 83.59305572509766 20.46679496765137 83.74080657958984 20.31903648376465 83.74080657958984 20.13668251037598 L 83.74080657958984 10.94412326812744 L 86.31990051269531 10.94412326812744 C 86.48759460449219 10.94412326812744 86.62869262695312 10.81828498840332 86.64783477783203 10.65171051025391 L 87.03954315185547 7.251450538635254 C 87.05030059814453 7.157898426055908 87.02065277099609 7.06421422958374 86.95806884765625 6.994031429290771 C 86.89540863037109 6.923784255981445 86.80575561523438 6.8835768699646 86.711669921875 6.8835768699646 L 83.74092864990234 6.8835768699646 L 83.74092864990234 4.752125263214111 C 83.74092864990234 4.109600067138672 84.08688354492188 3.783781766891479 84.769287109375 3.783781766891479 C 84.86653900146484 3.783781766891479 86.711669921875 3.783781766891479 86.711669921875 3.783781766891479 C 86.89402008056641 3.783781766891479 87.04178619384766 3.635958433151245 87.04178619384766 3.453671932220459 L 87.04178619384766 0.332552433013916 C 87.04178619384766 0.1501998752355576 86.89402008056641 0.002442822558805346 86.711669921875 0.002442822558805346 L 84.0347900390625 0.002442822558805346 C 84.01589965820312 0.001518503995612264 83.97399139404297 0 83.91220092773438 0 C 83.44771575927734 0 81.83329010009766 0.09117625653743744 80.55799102783203 1.26438570022583 C 79.14498901367188 2.564489126205444 79.34139251708984 4.121153831481934 79.38834381103516 4.391051769256592 L 79.38834381103516 6.883510589599609 L 77.03312683105469 6.883510589599609 C 76.85077667236328 6.883510589599609 76.7030029296875 7.03126859664917 76.7030029296875 7.213620185852051 L 76.7030029296875 10.57043933868408 C 76.7030029296875 10.75279331207275 76.85077667236328 10.90061473846436 77.03312683105469 10.90061473846436 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rhaj7l =
    '<svg viewBox="0.0 0.0 64.0 42.2" ><path  d="M 21.10651016235352 0 L 42.85261917114258 0 C 54.50942230224609 0 63.95912933349609 9.449646949768066 63.95912933349609 21.10637855529785 C 63.95912933349609 32.76311111450195 54.50942230224609 42.2127571105957 42.85261917114258 42.2127571105957 L 21.10651016235352 42.2127571105957 C 9.44970703125 42.2127571105957 0 32.76311111450195 0 21.10637855529785 C 0 9.449646949768066 9.44970703125 0 21.10651016235352 0 Z" fill="#022c43" stroke="none" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yuqej =
    '<svg viewBox="0.0 0.0 19.0 19.5" ><path transform="translate(0.0, -55.35)" d="M 9.710015296936035 59.99827194213867 C 10.57599449157715 59.99827194213867 11.40833950042725 60.23173904418945 12.11833477020264 60.67358779907227 L 12.92952060699463 61.2286262512207 C 13.21224117279053 61.42206954956055 13.59253787994385 61.38785934448242 13.83609580993652 61.14658737182617 L 16.20191192626953 58.80289077758789 C 16.35332489013672 58.65289688110352 16.42984008789062 58.44328308105469 16.41068649291992 58.2310676574707 C 16.39163017272949 58.01887512207031 16.27881050109863 57.82630157470703 16.10309791564941 57.70574188232422 L 14.72808742523193 56.76278686523438 C 14.70007133483887 56.74362564086914 14.67062950134277 56.72638320922852 14.64023208618164 56.71142196655273 L 13.30819797515869 56.05374908447266 C 13.29056930541992 56.04497909545898 13.27255916595459 56.03697204589844 13.25426387786865 56.02974319458008 C 12.10680389404297 55.57674407958984 10.89787864685059 55.34700393676758 9.6611328125 55.34700393676758 C 7.111504077911377 55.34700393676758 4.706523895263672 56.32561111450195 2.889186382293701 58.10225677490234 C 1.04373824596405 59.90642166137695 0.0174837801605463 62.35979080200195 -0.0002399120130576193 65.010498046875 C -0.01805882155895233 67.66178131103516 0.9754166603088379 70.12933349609375 2.796947479248047 71.95849609375 C 4.604374885559082 73.77362060546875 7.168676853179932 74.81475067138672 9.832461357116699 74.81475067138672 C 12.46794700622559 74.81475067138672 14.94067573547363 73.79143524169922 16.61650848388672 72.00728607177734 C 17.9439697265625 70.59406280517578 18.75858688354492 68.70642852783203 18.97270202636719 66.54845428466797 C 18.97470283508301 66.5279541015625 18.97594261169434 66.50746917724609 18.97613143920898 66.48698425292969 L 19.00090599060059 64.54836273193359 C 19.00147819519043 64.50823974609375 18.99861907958984 64.46821594238281 18.99233055114746 64.42857360839844 L 18.88846778869629 63.76604843139648 C 18.83405494689941 63.41833877563477 18.53437805175781 63.16202163696289 18.18247604370117 63.16202163696289 L 9.923652648925781 63.16202163696289 C 9.528872489929199 63.16202163696289 9.208988189697266 63.48199844360352 9.208988189697266 63.87667465209961 L 9.208988189697266 66.73356628417969 C 9.208988189697266 67.12825775146484 9.528872489929199 67.44823455810547 9.923652648925781 67.44823455810547 L 14.13406276702881 67.44823455810547 C 13.9411039352417 67.8712158203125 13.637038230896 68.31726837158203 13.25254821777344 68.73291015625 C 12.41391658782959 69.63986206054688 11.16325759887695 70.16002655029297 9.82121753692627 70.16002655029297 C 8.450685501098633 70.16002655029297 7.138185024261475 69.62298583984375 6.220273017883301 68.68669128417969 C 4.309553146362305 66.73825836181641 4.331469058990479 63.34325790405273 6.266868114471436 61.4214973449707 C 7.178015232086182 60.51713180541992 8.43305778503418 59.99827194213867 9.710015296936035 59.99827194213867 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ajiaif =
    '<svg viewBox="0.0 0.0 20.1 20.1" ><path  d="M 14.14695453643799 0 L 6.002687454223633 0 C 2.692791223526001 0 0 2.692774534225464 0 6.002649307250977 L 0 14.14686584472656 C 0 17.45674133300781 2.692791223526001 20.14951705932617 6.002687454223633 20.14951705932617 L 14.14695453643799 20.14951705932617 C 17.45685005187988 20.14951705932617 20.14964294433594 17.45674133300781 20.14964294433594 14.14686584472656 L 20.14964294433594 6.002649307250977 C 20.14960479736328 2.692774534225464 17.45681381225586 0 14.14695453643799 0 Z M 18.12258720397949 14.14686584472656 C 18.12258720397949 16.34251403808594 16.34261703491211 18.12247467041016 14.14695453643799 18.12247467041016 L 6.002687454223633 18.12247467041016 C 3.807023525238037 18.12247467041016 2.027053356170654 16.34251403808594 2.027053356170654 14.14686584472656 L 2.027053356170654 6.002649307250977 C 2.027053356170654 3.806962966918945 3.807023525238037 2.027040719985962 6.002687454223633 2.027040719985962 L 14.14695453643799 2.027040719985962 C 16.34261703491211 2.027040719985962 18.12258720397949 3.806962966918945 18.12258720397949 6.002649307250977 L 18.12258720397949 14.14686584472656 L 18.12258720397949 14.14686584472656 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cpe6pe =
    '<svg viewBox="4.9 4.9 10.4 10.4" ><path transform="translate(-128.14, -128.14)" d="M 138.2114105224609 132.9999847412109 C 135.3378143310547 132.9999847412109 132.9999847412109 135.3378295898438 132.9999847412109 138.2113342285156 C 132.9999847412109 141.0848693847656 135.3378143310547 143.4227142333984 138.2114105224609 143.4227142333984 C 141.0849914550781 143.4227142333984 143.4228210449219 141.0849151611328 143.4228210449219 138.2113342285156 C 143.4228210449219 135.3377838134766 141.0849914550781 132.9999847412109 138.2114105224609 132.9999847412109 Z M 138.2114105224609 141.3957061767578 C 136.4527130126953 141.3957061767578 135.0270385742188 139.9700469970703 135.0270385742188 138.2113647460938 C 135.0270385742188 136.4527130126953 136.4527587890625 135.0270538330078 138.2114105224609 135.0270538330078 C 139.9700927734375 135.0270538330078 141.395751953125 136.4527130126953 141.395751953125 138.2113647460938 C 141.395751953125 139.9700164794922 139.9700317382812 141.3957061767578 138.2114105224609 141.3957061767578 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vdrjbz =
    '<svg viewBox="0.0 0.0 16.0 16.0" ><path transform="translate(-4.0, -4.0)" d="M 12 20 L 13.40999984741211 18.59000015258789 L 7.829999923706055 13 L 20 13 L 20 11 L 7.829999923706055 11 L 13.40999984741211 5.409999847412109 L 12 4 L 4 12 L 12 20 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
