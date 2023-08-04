import 'package:flutter/cupertino.dart';

class Provider_class extends ChangeNotifier{
  List favname=[];
  List get favoritename=>favname;
  void favorites(String item){
    final favnameList=favname.contains(item);
    if (favnameList){
      favname.remove(item);
    }
    else{
      favname.add(item);
    }
    notifyListeners();
  }
  bool icn_change(String icnname){
    final favicn=favname.contains(icnname);
    return favicn;
  }
}