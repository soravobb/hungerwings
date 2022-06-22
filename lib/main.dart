import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:zumfle/screens/onboard/Login_screen.dart';
import 'package:zumfle/screens/splash/splash_screen.dart';

import 'constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(primarySwatch: Colors.grey),
     debugShowCheckedModeBanner: false,
        home: Splash()
    );
  }
}

