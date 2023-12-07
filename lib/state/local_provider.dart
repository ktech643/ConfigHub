import 'package:flutter/material.dart';

import '../l10n/l10n.dart';

class LocaleProvider extends ChangeNotifier{
   Locale? _locale;
   LocaleProvider({locale}){
     if(locale.contains('en')){
       _locale=Locale('en');}
     else if(locale.contains('ar')){
       _locale=Locale('ar');}
     else{
       _locale=Locale('en');}

   }

  Locale? get locale=>_locale;
  void setLocale(Locale locale){
    if(!L10n.all.contains(locale))return;
    _locale=locale;
    notifyListeners();
  }
  void clearLocale(){
    _locale=null;
    notifyListeners();
  }
}