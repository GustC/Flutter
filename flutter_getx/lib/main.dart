import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/home/home_page.dart';
import 'package:flutter_getx/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: HomePage(),
    getPages: pages,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Inter'),
  ));
}

