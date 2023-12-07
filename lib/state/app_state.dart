import 'package:flutter/material.dart';

class AppState with ChangeNotifier {

  String _language='en';
  Map<String, dynamic>? _user;
  bool _isStudent=true;
  bool _isGuest=false;



  Map<String, dynamic>? get user => _user;
  String get language => _language;
  bool get isStudent=> _isStudent;
  bool get isGuest=> _isGuest;



  AppState({user,language}){
    _user=user;
    _language=language;
  }
  updateUser({user}){
    _user=user;
    notifyListeners();

  }
  updateGuestStatus({isGuest=false}){
    _isGuest=isGuest;
    notifyListeners();

  }
  updateIsStudent(bool value){
    _isStudent=value;
    notifyListeners();
  }
  updateLanguage({language}){
    _language=language;
    notifyListeners();

  }
  clearState(){
    _user=null;
    notifyListeners();
  }
}
