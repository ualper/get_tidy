import 'package:flutter/material.dart';
import 'package:get_tidy/XD/ChooseServiceType.dart';
import 'package:get_tidy/XD/SignUp.dart';
import 'package:get_tidy/XD/SplashScreen.dart';
import 'package:get_tidy/XD/verified_screen.dart';
import '/XD/SignIn.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);
  @override
  State<Home1> createState() => _MyAppState();
}

class _MyAppState extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffff7f00),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.topCenter,
        child: SignIn(),
        // child: ChooseServiceType(),
      ),
    );
  }
}
