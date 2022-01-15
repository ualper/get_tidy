// -----------------------------------------
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  final _name = "".obs;
  get getName => _name.value;
  void setName(String formval) => _name.value = formval;

  final _password = "".obs;
  get getPassword => _password.value;
  void setPassword(String formval) => _password.value = formval;

  final _sayfa = 0.obs;
  get getSayfa => _sayfa.value;
  void setSayfa(int formval) => _sayfa.value = formval;

  final _risale = "".obs;
  get getRisale => _risale.value;
  void setRisale(String formval) => _risale.value = formval;

  final _tarih = "".obs;
  get getTarih => _tarih.value;
  void setTarih(String formval) => _tarih.value = formval;

  //-----------------------------------
  late Widget _widgetUtil = const Text('').obs as Widget;
  get getWidgetUtil => _widgetUtil;

  set setWidgetUtil(Widget widgetUtil) => _widgetUtil = widgetUtil;
  //-----------------------------------

}
