
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:zumfle/screens/splash/splash_screen_controller.dart';

import '../../constants/constants.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GetBuilder(builder: (_)=>Scaffold(
        body: Container(
          height: double.infinity,
        decoration: BoxDecoration(
        image: DecorationImage(
        image:
        AssetImage("assets/images/background.png"),
    fit: BoxFit.cover,
    ),
    ),
            child: logo(size.width,size.height,MediaQuery.of(context).size.width,500.0)
        ),
    ),
      init: SplashController(),
    );
  }
}
