import 'package:flutter/cupertino.dart';
import 'package:fyp/Models/address.dart';

class AppData extends ChangeNotifier {
  Address userlocation, searchedlocation;

  void updateUserlocation(Address ulocation) {
    userlocation = ulocation;
    notifyListeners();
  }

  void updateSearchedlocation(Address searchlocation) {
    searchedlocation = searchlocation;
    notifyListeners();
  }
}
