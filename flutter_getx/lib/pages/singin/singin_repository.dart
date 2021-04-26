import 'package:flutter_getx/utils/constants/local_storage.dart';
import 'package:flutter_getx/utils/functions/storage.dart';


class SingInRepository{
  Storage _storage;

  SingInRepository(){
    _storage = Storage();
  }

  Future saveUser(String username) async{
    try{
      return _storage.saveData(keyUser, username);
    } catch (err,stack){
      print(err);
    }
  }

  getUser(){
    return _storage.getLocalStorageData(keyUser);
  }
}