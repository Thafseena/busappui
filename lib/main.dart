import 'package:busappui/splash/splash_screen.dart';
import 'package:busappui/widgets/mainscreen/home_screen.dart';
import 'package:busappui/widgets/screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash',
    routes: {
      'splash':(context) => SplashScreen(),
      'login':(context) => LoginPage(),
      //'home':(context)=>HomeScreen(),
    },
  ));
}

