
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
late SharedPreferences prefs;
setDataInSharedPref(key,value){
  prefs.setString(key,jsonEncode(value));
}

getDataFromSharedPref(String key){
  if(prefs.getString(key)!=null){
    return jsonDecode(prefs.getString(key)!);
  }
  return null;
}

removeDataFromSharedPref(key){
  if(prefs.getString(key)!=null){
    prefs.remove(key);
  }
}