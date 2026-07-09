import 'package:flutter/material.dart';
import 'package:ui_design/ui/screens/login_screen.dart';

class AuthService {
 static Future <void> logOut(BuildContext context) async {
   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreen()),
       (predicate) => false);
  }
}