import 'package:flutter/material.dart';
import 'package:religious/model/model.dart';

class Provider1 extends ChangeNotifier {
  List< Hadith?> favourit = [];
   AddToFav(Hadith? favoHadith) {
   favourit.add(favoHadith);
    notifyListeners();
  }
}
