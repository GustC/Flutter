import 'package:flutter_getx/pages/app_repository.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  AppRepository _appRepository = AppRepository();

  RxBool loading = true.obs;

  getCachedUser() async {
    Future.delayed(Duration(seconds: 3),(){
      var user = _appRepository.getUser();
      if(user == null){
        Get.offAndToNamed("singin");
      } else {
        Get.offAndToNamed("home");
      }
    });
  }

}