import 'package:flutter_getx/pages/singin/singin_repository.dart';
import 'package:get/get.dart';

class SingInController extends GetxController{
  static SingInRepository _singInRepository = SingInRepository();

  RxString _name = "".obs;

  String get name => _name.value;

  changeName(String name) => _name.value = name;

  submit() async {
    try {
      var response = await _singInRepository.saveUser(name);
      print(response);
    } catch (err,stack){
      print(err);
    }
  }

  getUser(){
    print(_singInRepository.getUser());
  }
}