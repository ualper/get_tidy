import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_tidy/XD/service_provider_main.dart';

class UserClass {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';
  String phone = '';
  GeoPoint location;
  int likes = 0;
  double ratings = 0.0;
  Map comments = <String, List<String>>{};

  UserClass({
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.password,
    required this.phone,
    required this.location,
    required this.likes,
    required this.ratings,
    required this.comments,
  });

  get getFirstname => firstname;
  set setFirstname(firstname) => this.firstname = firstname;
  get getLastname => lastname;
  set setLastname(lastname) => this.lastname = lastname;
  get getEmail => email;
  set setEmail(email) => this.email = email;
  get getPassword => password;
  set setPassword(password) => this.password = password;
  get getPhone => phone;
  set setPhone(phone) => this.phone = phone;
  get getZipcode => location;
  set setZipcode(location) => this.location = location;
  get getLikes => likes;
  set setLikes(likes) => this.likes = likes;
  get getRatings => ratings;
  set setRatings(ratings) => this.ratings = ratings;

  get getComments => comments;
  set setComments(comments) => this.comments = comments;

  void addComment(username, usercomment) {
    // usercomment is a list of string comments
    comments['username'] = username;
    comments['usercomment'] = usercomment;
  }

  UserClass copyWith({
    String? firstname,
    String? lastname,
    String? email,
    String? password,
    String? phone,
    GeoPoint? location,
    int? likes,
    double? ratings,
    List? comments,
  }) {
    return UserClass(
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      email: email ?? this.email,
      password: password ?? this.password,
      phone: phone ?? this.phone,
      location: location ?? this.location,
      likes: likes ?? this.likes,
      ratings: ratings ?? this.ratings,
      comments: {},
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'password': password,
      'phone': phone,
      'location': location,
      'likes': likes,
      'ratings': ratings,
      'comments': comments,
    };
  }

  factory UserClass.fromMap(Map<String, dynamic> map) {
    return UserClass(
      firstname: map['firstname'] ?? '',
      lastname: map['lastname'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      phone: map['phone'] ?? '',
      location: map['location'] ?? '',
      likes: map['likes'] ?? 0,
      ratings: map['ratings'] ?? 0.0,
      comments: map['comments'] ?? {},
    );
  }

  String toJson() => json.encode(toMap());

  factory UserClass.fromJson(String source) => UserClass.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserClass(firstname: $firstname, lastname: $lastname, email: $email, password: $password, phone: $phone, location: $location,likes: $likes,ratings: $ratings,comments: $comments)';
  }

// -------------------------------------------
  // Widget createProviderService() {
  //   return ServiceProviderMain(work);
  // }
}
