import 'package:localstorage/localstorage.dart';

const String storageKey = "flutter.agenda.getx";

class Storage{
  LocalStorage _storage = new LocalStorage(storageKey); 

  dynamic getLocalStorageData(String dataKey) => this._storage.getItem(dataKey);

  Future saveData(String dataKey,dynamic value) async{
    try{
      var response = await this._storage.setItem(dataKey, value);
      return response;
    }catch(err,stack){
      print(err);
    }
  }
}