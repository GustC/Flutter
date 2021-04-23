

import 'package:flutter_getx/pages/home/home_page.dart';
import 'package:get/get.dart';

List<GetPage> pages = [
  GetPage(
    name: "home",
    page: ()=>HomePage(),
  ),
  GetPage(
    name: "home/",
    page: ()=>HomePage(),
  ),
];