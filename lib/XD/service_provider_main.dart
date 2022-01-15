// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_tidy/firestore_database.dart';
import 'package:get_tidy/user.dart';

import 'component_provider_customers.dart';

class ServiceProviderMain extends StatefulWidget {
  const ServiceProviderMain({Key? key}) : super(key: key);

  @override
  State<ServiceProviderMain> createState() => _ServiceProviderMainState();
}

class _ServiceProviderMainState extends State<ServiceProviderMain> {
  @override
  Widget build(BuildContext context) {
    List usercomment = [];

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0.0, end: 0.0),
            child: SvgPicture.string(
              _svg_k6dl,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 18.0, end: 18.0),
            Pin(start: 113.0, end: 44.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 180.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: const Color(0xffffffff),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(41, 114, 41, 41),
                          offset: Offset(0, 1),
                          blurRadius: 7,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.snackbar('tapped', 'profile');
                    //----------------------------------------------
                    FireStoreDatabase.readSpecificUser(email: 'asd@mail.com');
                    //----------------------------------------------
                  },
                  child: Pinned.fromPins(
                    Pin(size: 104.0, middle: 0.5),
                    Pin(size: 90.0, start: 0.0),
                    child: Image.asset('assets/user_avatar_name@3x.png'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.snackbar('Go to', 'Messages');
                    //-----------------firestore
                    UserClass createdUser = UserClass(
                      firstname: 'firstname',
                      lastname: 'lastname',
                      email: 'email',
                      password: 'password',
                      phone: 'phone',
                      location: GeoPoint(0, 0),
                      likes: 0,
                      ratings: 0.0,
                      comments: {},
                    );

                    usercomment.add('this is comment of user2');
                    usercomment.add('also,this is comment of user2');

                    createdUser.addComment('user1', 'this is comment of user1');
                    createdUser.addComment('user2', usercomment);

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
                  },
                  child: Pinned.fromPins(
                    Pin(size: 86.0, middle: 0.5),
                    Pin(size: 77.0, middle: 0.1882),
                    child: Image.asset('assets/messages@3x.png'),
                  ),
                ),

                //--------------------------
                //--- PLANNED WORKS begin
                //--------------------------

                Pinned.fromPins(
                  Pin(start: 10.0, end: 9.0),
                  Pin(size: 60.0, middle: 0.45),
                  child: Container(
                      // color: Colors.tealAccent,
                      child: ComponentProviderCustomers(
                    customerName: 'Elif Hanim',
                    workTime: '17.30',
                    price: '12',
                    dateTime: DateTime.utc(2022, 01, 23),
                  )),
                ),
                Pinned.fromPins(
                  Pin(start: 10.0, end: 10.0),
                  Pin(size: 60.0, middle: 0.6),
                  child: ComponentProviderCustomers(
                    workTime: '12.30',
                    customerName: 'Ahmet Bey',
                    price: '20',
                    dateTime: DateTime.now(),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 10.0, end: 10.0),
                  Pin(size: 60.0, middle: 0.75),
                  child: ComponentProviderCustomers(
                    workTime: '14.00',
                    customerName: 'Ayse Hanim',
                    price: '16',
                    dateTime: DateTime.now(),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 10.0, end: 10.0),
                  Pin(size: 60.0, middle: 0.9),
                  child: ComponentProviderCustomers(
                    workTime: '15.10',
                    customerName: 'Hasan Bey',
                    price: '17',
                    dateTime: DateTime.now(),
                  ),
                ),

                //--------------------------
                //--- PLANNED WORKS end
                //--------------------------
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 21.5, end: 21.5),
            Pin(size: 81.7, start: 25.2),
            child: Image.asset('assets/drawable-xxxhdpi/getTidy_WhiteDot.png'),
          ),
        ],
      ),
    );
  }
}

const String _svg_k6dl =
    '<svg viewBox="0.0 0.0 360.0 760.0" ><path  d="M 0 0 L 360 0 L 360 760 L 0 760 L 0 0 Z" fill="#ff7f00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
