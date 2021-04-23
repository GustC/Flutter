

import 'package:flutter_getx/pages/home/home_page.dart';
import 'package:flutter_getx/pages/singin/singin_page.dart';
import 'package:flutter_getx/pages/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

List<GetPage> pages = [
  GetPage(
    name: "splash_screen",
    page: ()=>SplashScreen(),
  ),
  GetPage(
    name: "splash_screen/",
    page: ()=>SplashScreen(),
  ),
  GetPage(
    name: "home",
    page: ()=>HomePage(),
  ),
  GetPage(
    name: "home/",
    page: ()=>HomePage(),
  ),
  GetPage(
    name: "singin/",
    page: ()=>SingInPage(),
  ),
  GetPage(
    name: "singin",
    page: ()=>SingInPage(),
  ),
];