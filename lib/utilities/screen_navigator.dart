import 'package:flutter/material.dart';

import '../main.dart';

push(Widget newScreen, String screenName) async {
  return await navigatorKey.currentState!.push(MaterialPageRoute(
    builder: (context) => newScreen,
    settings: RouteSettings(name: screenName),
  ));
}

pushReplacement(Widget newScreen, String screenName) async {
  return await navigatorKey.currentState!.pushReplacement(MaterialPageRoute(
    builder: (context) => newScreen,
    settings: RouteSettings(name: screenName),
  ));
}

pushAndRemoveUntil(Widget newScreen, String screenName) async {
  return await navigatorKey.currentState!.pushAndRemoveUntil(
      MaterialPageRoute(
          builder: (context) => newScreen,
          settings: RouteSettings(name: screenName)),
      (Route<dynamic> route) => false);
}

pop({value}) {
  if (navigatorKey.currentState!.canPop()) {
    return navigatorKey.currentState!.pop(value);
  }
}
