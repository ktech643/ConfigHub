import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../utilities/constants.dart';
List? user;
String? tokens;
bool internetConStatus = false;

_initilizeHeaders(BuildContext context, {bool authToken = false}) async {
  Map<String, String> apiHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    if (authToken) 'Authorization': 'Bearer ${tokens!}',
  };
  return apiHeaders;
}

processResponse(response, BuildContext context, String funName) async {
  print(response.statusCode);
  var _response = await jsonDecode(response.body);
  print(_response.toString());
  if ((response.statusCode == 200 ||response.statusCode == 201) && !_response.keys.contains('errors') ) {
    print(_response);
    return jsonDecode(response.body);
  } else {
    print('Else condition: ${response.body}');
    if(_response.keys.contains('errors')) {
      Fluttertoast.showToast(msg: _response['errors'].toString());
    }if(_response['message'] is List){
      Fluttertoast.showToast(msg: _response['message'][0].toString());
    }else {
      Fluttertoast.showToast(msg: _response['message'].toString());
    }
    return null;
  }
}

class Network {
  static get(String route, BuildContext context, String token,
      {authToken = false}) async {
    internetConStatus = await InternetConnectionChecker().hasConnection;
    if (internetConStatus) {
      tokens = token;
      Map<String, String> apiHeaders =
          await _initilizeHeaders(context, authToken: authToken);
      // print(">>>>>"+apiHeaders.toString());

      try {
        var response = await http.get(
          Uri.parse('${AppConstants.baseUrl}$route'),
          headers: apiHeaders,
        );
        // print('response : ${response.body.toString()}');
        return await processResponse(response, context, route);
      } catch (e) {
        return null;
      }
    } else {
      Fluttertoast.showToast(msg: 'Check your Internet connection');
      return null;
    }
  }

  static post(String route, BuildContext context,
      {payload,
      bool useOldUrl = false,
      String? token,
      authToken = false}) async {
    internetConStatus = await InternetConnectionChecker().hasConnection;

    if (internetConStatus) {
      tokens = token;
      if (payload != null) {
        print('Payload: $payload');
      }
      Map<String, String> apiHeaders =
          await _initilizeHeaders(context, authToken: authToken);
      print('apiHeaders : $apiHeaders');

      String body = jsonEncode(payload);
      try {
        print("before calling");
        var response = await http.post(
            Uri.parse('${AppConstants.baseUrl}$route'),
            headers: apiHeaders,
            body: body);
        print("after calling");
        return processResponse(response, context, route);
      } catch (e) {
        // oneButtonDialog(
        //     context, AppLocalizations.of(context).error, e.toString());
        return null;
      }
    } else {
      Fluttertoast.showToast(msg: 'Check your Internet connection');
      return null;
    }
  }

  static put(String route, BuildContext context, {payload}) async {
    internetConStatus = await InternetConnectionChecker().hasConnection;
    if (internetConStatus) {
      Map<String, String> apiHeaders = await _initilizeHeaders(context);

      String body = jsonEncode(payload);

      try {
        var response = await http.put(Uri.parse('apiUrl$route'),
            headers: apiHeaders, body: body);

        return processResponse(response, context, route);
      } catch (e) {
        // oneButtonDialog(
        //     context, AppLocalizations.of(context).error, e.toString());
        return;
      }
    } else {
      Fluttertoast.showToast(msg: 'Check your Internet connection');
      return null;
    }
  }

  static delete(String route, BuildContext context, {payload}) async {
    internetConStatus = await InternetConnectionChecker().hasConnection;
    if (internetConStatus) {
      Map<String, String> apiHeaders = await _initilizeHeaders(context);

      String body = jsonEncode(payload);

      try {
        var response = await http.delete(Uri.parse('apiUrl$route'),
            headers: apiHeaders, body: body);

        return processResponse(response, context, route);
      } catch (e) {
        // oneButtonDialog(
        //     context, AppLocalizations.of(context).error, e.toString());
        return;
      }
    } else {
      Fluttertoast.showToast(msg: 'Check your Internet connection');
      return null;
    }
  }
}
