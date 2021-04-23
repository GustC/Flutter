import 'package:get/get.dart';

class HomeController extends GetxController{
  RxBool loading = true.obs;

  func() async{
    Future.delayed(Duration(seconds: 3),(){
      loading.value = false;
      update();
    });
  }
}