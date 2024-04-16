import 'package:flutter/material.dart';

class Textfield_Controller extends ChangeNotifier {
  var username1 = "";

  TextEditingController usernameController = TextEditingController();

  // ------Using onChanged-------

  void setName1(String val) {
    username1 = val;
    notifyListeners();
  }

  String get getName1 => username1;
}
 