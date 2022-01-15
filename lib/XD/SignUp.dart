// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_tidy/MyController.dart';
import 'package:get_tidy/XD/SignIn.dart';
import 'package:get_tidy/XD/verified_screen.dart';
import 'package:get_tidy/firebase_auth/utils/fire_auth.dart';
import 'package:get_tidy/firebase_auth/utils/validator.dart';
import 'package:get_tidy/firestore_database.dart';
import 'package:get_tidy/user.dart';

class SignUp extends StatefulWidget {
  const SignUp({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _firstnameTextController = TextEditingController();
  final _lastnameTextController = TextEditingController();
  final _phoneTextController = TextEditingController();
  final _locationTextController = TextEditingController();

  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();
  final _focusFirstName = FocusNode();
  final _focusLastName = FocusNode();
  final _focusPhone = FocusNode();
  final _focusZipCode = FocusNode();

  final _registerFormKey = GlobalKey<FormState>();
  MyController mycontroller = Get.put(MyController());

  void clearTextControllers() {
    _firstnameTextController.clear();
    _lastnameTextController.clear();
    _emailTextController.clear();
    _passwordTextController.clear();
    _phoneTextController.clear();
    _locationTextController.clear();
  }

  @override
  void initState() {
    super.initState();
    _firstnameTextController.addListener(_printLatestValue);
    _lastnameTextController.addListener(_printLatestValue);
    _emailTextController.addListener(_printLatestValue);
    _passwordTextController.addListener(_printLatestValue);
    _phoneTextController.addListener(_printLatestValue);
    _locationTextController.addListener(_printLatestValue);
  }

  void _printLatestValue() {
    print('FirstName: ${_firstnameTextController.text}');
    print('LastName: ${_lastnameTextController.text}');
    print('Email: ${_emailTextController.text}');
    print('Password: ${_passwordTextController.text}');
    print('Phone: ${_phoneTextController.text}');
    print('ZipCode: ${_locationTextController.text}');
  }

  // ---------------------------------------------
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusEmail.unfocus();
        _focusPassword.unfocus();
        _focusFirstName.unfocus();
        _focusLastName.unfocus();
        _focusPhone.unfocus();
        _focusZipCode.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false, // SOLVES THE BOTTOM OVERFLOW WHEN KEYBOARD COMES UP
        backgroundColor: const Color(0xffffffff),
        body: Stack(
          children: <Widget>[
            Pinned.fromPins(
              Pin(start: 0.0, end: 0.0),
              Pin(size: 326.0, middle: 0.4395),
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 45.3),
                    Pin(size: 232.7, end: 0.0),
                    child: SvgPicture.string(
                      _svg_hnikdf,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 298.7, end: 0.0),
                    Pin(size: 254.7, start: 0.0),
                    child: SvgPicture.string(
                      _svg_pjd26y,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            Pinned.fromPins(
              Pin(start: 23.0, end: 23.0),
              Pin(start: 0.0, end: 77.0),
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 150.0, end: 0.0),
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(start: 59.0, end: 70.0),
                          child: SvgPicture.string(
                            _svg_j5lte,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 180.0, middle: 0.5156),
                          Pin(size: 18.0, end: 0.0),
                          child: Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              color: const Color(0xffffffff),
                              letterSpacing: 0.7000000000000001,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 46.0, end: 47.0),
                          Pin(size: 56.0, middle: 0.7927),
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
                                      BoxShadow(
                                        color: const Color(0x29000000),
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
                                    User? user = await FireAuth.registerUsingEmailPassword(
                                      name: _firstnameTextController.text + ' ' + _lastnameTextController.text,
                                      email: _emailTextController.text,
                                      password: _passwordTextController.text,
                                    );

                                    setState(() {});
                                    if (user != null) {
                                      Get.snackbar('Registration has been created successfully.', '');
                                      Timer(const Duration(seconds: 3), () => Get.to(VerifiedScreen()));
                                    }
                                    //-----------------> firestore
                                    UserClass createdUser = UserClass(
                                      firstname: _firstnameTextController.text,
                                      lastname: _lastnameTextController.text,
                                      email: _emailTextController.text,
                                      password: _passwordTextController.text,
                                      phone: _phoneTextController.text,
                                      location: GeoPoint(0, 0), // _locationTextController.text,
                                      likes: 0,
                                      ratings: 0,
                                      comments: {},
                                    );
                                    FireStoreDatabase.addUser(
                                      firstname: createdUser.firstname,
                                      lastname: createdUser.lastname,
                                      email: createdUser.email,
                                      password: createdUser.password,
                                      phone: createdUser.phone,
                                      location: createdUser.location,
                                      likes: createdUser.likes,
                                      ratings: createdUser.ratings,
                                      comments: createdUser.comments,
                                    );
                                  }

                                  clearTextControllers();
                                },
                                child: Pinned.fromPins(
                                  Pin(size: 74.0, middle: 0.5),
                                  Pin(size: 20.0, middle: 0.4706),
                                  child: Text(
                                    'SIGN UP',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 17,
                                      color: const Color(0xffffffff),
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
                          Pin(size: 158.0, middle: 0.4978),
                          Pin(size: 46.0, start: 0.0),
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 32,
                              color: const Color(0xff312c66),
                              fontWeight: FontWeight.w700,
                              height: 1.40625,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
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
              onTap: () => Get.to(SignIn()),
              child: Pinned.fromPins(
                Pin(start: 57.0, end: 56.0),
                Pin(size: 56.0, end: 35.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28.0),
                    border: Border.all(width: 2.0, color: const Color(0xff022c43)),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(SignIn()),
              child: Pinned.fromPins(
                Pin(size: 84.0, middle: 0.4994),
                Pin(size: 24.0, end: 53.1),
                child: Text(
                  'SIGN IN',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    color: const Color(0xff022c43),
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(start: 37.0, end: 35.0),
              Pin(size: 249.0, middle: 0.5245),
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Form(
                    key: _registerFormKey,
                    child: Wrap(alignment: WrapAlignment.center, spacing: 0, runSpacing: 0, children: <Widget>[
                      TextFormField(
                        focusNode: _focusFirstName,
                        controller: _firstnameTextController,
                        validator: (value) => Validator.validateName(
                          name: value,
                        ),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff878787),
                          letterSpacing: 1,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                          labelText: 'First Name',
                        ),
                      ),
                      TextFormField(
                        focusNode: _focusLastName,
                        controller: _lastnameTextController,
                        validator: (value) => Validator.validateName(
                          name: value,
                        ),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff878787),
                          letterSpacing: 1,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                          labelText: 'Last Name',
                        ),
                      ),
                      TextFormField(
                        focusNode: _focusEmail,
                        controller: _emailTextController,
                        validator: (value) => Validator.validateEmail(
                          email: value,
                        ),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff878787),
                          letterSpacing: 1,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                          labelText: 'Email',
                        ),
                      ),
                      TextFormField(
                        focusNode: _focusPassword,
                        controller: _passwordTextController,
                        validator: (value) => Validator.validatePassword(
                          password: value,
                        ),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff878787),
                          letterSpacing: 1,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                          labelText: 'Password',
                        ),
                      ),
                      TextFormField(
                        focusNode: _focusPhone,
                        controller: _phoneTextController,
                        // validator: (value) => Validator.validateName(
                        //   name: value,
                        // ),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff878787),
                          letterSpacing: 1,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                          labelText: 'Phone Number',
                        ),
                      ),
                      TextFormField(
                        focusNode: _focusZipCode,
                        controller: _locationTextController,
                        // validator: (value) => Validator.validateName(
                        //   name: value,
                        // ),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff878787),
                          letterSpacing: 1,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                          labelText: 'Zip Code',
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 204.0, middle: 0.5),
              Pin(size: 18.0, end: 110.0),
              child: Text(
                'Already have an account?',
                style: TextStyle(
                  fontFamily: 'HelveticaNeue',
                  fontSize: 16,
                  color: const Color(0xff022c43),
                  letterSpacing: 0.8,
                  height: 1.375,
                ),
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
            ),
            // GET TIDY LABEL
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

const String _svg_cknz7y =
    '<svg viewBox="30.0 275.5 314.0 1.0" ><path transform="translate(30.0, 275.5)" d="M 0 0 L 314 0" fill="none" stroke="#b1b3b7" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hnikdf =
    '<svg viewBox="0.0 93.3 314.7 232.7" ><path transform="translate(-6.0, 752.0)" d="M 6 -616 L 11.88773441314697 -426 L 273.5648193359375 -658.6666870117188 L 320.6666870117188 -609.3333129882812 L 6 -616 Z" fill="#ff7f00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pjd26y =
    '<svg viewBox="61.3 0.0 298.7 254.7" ><path transform="translate(-32.0, 752.0)" d="M 93.33334350585938 -610.6666870117188 L 129.3333435058594 -497.3333435058594 L 388 -752 L 392 -604 L 93.33334350585938 -610.6666870117188 Z" fill="#022c43" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_j5lte =
    '<svg viewBox="0.0 59.0 314.0 404.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(0.0, 59.0)" d="M 22.09970664978027 0 L 291.9002685546875 0 C 304.1056213378906 0 314 8.144553184509277 314 18.19136810302734 L 314 385.8086547851562 C 314 395.8554382324219 304.1056213378906 404 291.9002685546875 404 L 22.09970664978027 404 C 9.894374847412109 404 0 395.8554382324219 0 385.8086547851562 L 0 18.19136810302734 C 0 8.144553184509277 9.894374847412109 0 22.09970664978027 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_vdrjbz =
    '<svg viewBox="0.0 0.0 16.0 16.0" ><path transform="translate(-4.0, -4.0)" d="M 12 20 L 13.40999984741211 18.59000015258789 L 7.829999923706055 13 L 20 13 L 20 11 L 7.829999923706055 11 L 13.40999984741211 5.409999847412109 L 12 4 L 4 12 L 12 20 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_costgg =
    '<svg viewBox="143.1 55.0 73.8 54.4" ><path transform="translate(212.43, 111.71)" d="M 3.633895874023438 -39.94763946533203 C 7.115249633789062 -30.47852325439453 -0.8747711181640625 -18.73495483398438 -13.54463195800781 -10.93685913085938 C -26.27157592773438 -3.138755798339844 -43.62130737304688 0.7602996826171875 -55.20680236816406 -5.273956298828125 C -66.79232788085938 -11.30820465087891 -72.61363220214844 -27.27573394775391 -67.36306762695312 -38.69437408447266 C -62.1695556640625 -50.06659698486328 -45.96124267578125 -56.88994598388672 -30.38072204589844 -56.70427703857422 C -14.80021667480469 -56.56502532958984 0.15252685546875 -49.41677093505859 3.633895874023438 -39.94763946533203 Z" fill="#ff7f00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
