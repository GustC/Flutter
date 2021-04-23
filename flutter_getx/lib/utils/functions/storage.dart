import 'package:localstorage/localstorage.dart';

const String storageKey = "flutter.agenda.getx";

class Storage{
  LocalStorage _storage; 

  Storage(){
    this._storage = new LocalStorage(storageKey);     
  }



  Storage getLocalStorageData(String dataKey) => this._storage.getItem(dataKey);
}