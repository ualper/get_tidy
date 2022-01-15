// ignore_for_file: prefer_const_constructors

import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_tidy/XD/SignIn.dart';
import 'package:get_tidy/firebase_auth/utils/fire_auth.dart';
import 'package:get_tidy/firebase_auth/utils/validator.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _focusEmail = FocusNode();
    var _emailTextController = TextEditingController();
    return GestureDetector(
      onTap: () {
        _focusEmail.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Pinned.fromPins(
              Pin(start: 40.0, end: 40.0),
              Pin(size: 90.0, start: 55.0),
              child: Image.asset('assets/drawable-xxxhdpi/GetTidyOrange.png'),
            ),
            Pinned.fromPins(
              Pin(size: 350.0, middle: 0.5),
              Pin(size: 55.0, start: 220),
              child: const Text(
                'Reset Password',
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
              Pin(size: 240.0, middle: 0.5),
              Pin(size: 45.0, middle: 0.5),
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
                  labelText: 'Email',
                ),
              ),
            ),
            Pinned.fromPins(Pin(size: 100.0, middle: 0.5), Pin(size: 50.0, middle: 0.7),
                child: ElevatedButton(
                  child: Text(
                    'RESET',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff312c66),
                    onPrimary: Colors.white,
                    shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  onPressed: () {
                    print(_emailTextController.text);
                    FireAuth().resetPassword(_emailTextController.text);
                    Get.snackbar('Password Reset Verification Mail', 'Send to your email.');
                    Get.to(SignIn());
                  },
                )),
          ],
        ),
      ),
    );
  }
}
