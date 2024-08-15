import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXSignUpController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  bool isValidUserName(String input) {
    return RegExp(r'^([a-zA-Z0-9]{6,})$').hasMatch(input);
  }

  bool isValidPassword(String input) {
    RegExp basic = RegExp(r'^([a-zA-Z\d\W]{6,})$');
    //testing...
    RegExp advance = RegExp(r'^([^[^a-z]{6,}[^A-Z]{6,}\D{6,}\W{6,}])$');
    return basic.hasMatch(input);
  }
}
