import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_getx/pages/splash_screen/splash_screen.dart';
import 'package:flutter_getx/routes.dart';
import 'package:flutter_getx/utils/constants/colors.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: SplashScreen(),
    getPages: pages,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Inter',
      primaryColor: colorDefault
    ),
    builder: (ctx,widget){
      EasyLoading.init();
      return widget;
    },
  ));
}

