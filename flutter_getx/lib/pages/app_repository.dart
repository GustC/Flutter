import 'package:flutter_getx/utils/constants/local_storage.dart';
import 'package:flutter_getx/utils/functions/storage.dart';

class AppRepository{
  Storage _storage;

  AppRepository(){
    _storage = Storage();
  }

  dynamic getUser(){
    return _storage.getLocalStorageData(keyUser);
  }
}