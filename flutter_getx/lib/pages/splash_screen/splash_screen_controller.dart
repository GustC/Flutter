import 'package:flutter_getx/utils/functions/storage.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  RxBool loading = true.obs;


  getCachedUser() async {
    var user = Storage().getLocalStorageData("user");
    Future.delayed(Duration(seconds: 3),(){
      if(user == null){
        Get.offAndToNamed("singin");
      } else {
        Get.offAndToNamed("home");
      }
    });
  }

}