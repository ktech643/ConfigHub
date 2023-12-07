import 'dart:convert';
import 'package:demo/network/network_services.dart';
import 'package:demo/state/app_state.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/utilities/helper.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:provider/provider.dart';

class ApiCaller {
  final BuildContext _context;
  static var token;
  static bool userVerify = false;
  bool internetConStatus = false;
  List list=[];


  ApiCaller(this._context);



  login({required String phone, required String password}) async {

    var data = {
      "phone": phone,
      "password": password
    };
    var body= await Network.post('login', _context, payload: data);
    if (body != null) {
      Provider.of<AppState>(_context, listen: false)
          .updateUser(user: body);
      setDataInSharedPref(AppConstants.USER_KEY,body);
    }
    print('body : $body');
    return body;
  }
  signUp({required String phone, required String name,required String email,required String password,required String username }) async {

    var data = {

      "email": email,
      "name": name,
      'username':username,
      "password": password,
      "phone": phone

      // "city": city
    };
    var body= await Network.post('register', _context, payload: data);
    if (body != null) {
      Provider.of<AppState>(_context, listen: false)
          .updateUser(user: body);
      setDataInSharedPref(AppConstants.USER_KEY,body);
    }
    print('body : $body');
    return body;
  }


  Future editProfile({required String name,required String password,required String profile_image }) async {
    internetConStatus = await InternetConnectionChecker().hasConnection;
    var appState=Provider.of<AppState>(_context, listen: false);
    if (internetConStatus) {
      var data;
      var headers = {
        'Authorization': "Bearer " + appState.user!['token']
      };
      var request = http.MultipartRequest(
          'POST', Uri.parse('${AppConstants.baseUrl}edit/profile'));
      request.fields.addAll({
        "userId": appState.user!['user']['id'].toString(),
        "name": name,
        'password':password,
      });
      if (profile_image != null) {
        request.files.add(await http.MultipartFile.fromPath('profile_image', profile_image));
      }
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();
      data =
      await response.stream.transform(utf8.decoder).listen((value) async {
        //  (value.toString());
        var decodedData = json.decode(value.toString());
        print('data : '+decodedData.toString());
        if (decodedData != null) {
          appState.updateUser(user: decodedData);

        }
        return decodedData;
      });
      return data;
    } else {
      Fluttertoast.showToast(msg: 'Check your Internet Connection...');
      return null;
    }
  }


  getAds(String berearToken,String username) async {
    var body = await Network.get(
        'myads?username=${username}', _context, berearToken.toString(),
        authToken: true);


    return body;
  }




}


