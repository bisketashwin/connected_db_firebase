// login_controller.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isLoading = false;

  void login() async {
    _isLoading = true;

    // Make a network request to an authentication server to validate the user's credentials.

    // If the login is successful, navigate the user to the next screen in your app.
    // Otherwise, display an error message.

    _isLoading = false;
  }

  bool get isLoading => _isLoading;
  String get email => _emailController.text;
  String get password => _passwordController.text;
}
