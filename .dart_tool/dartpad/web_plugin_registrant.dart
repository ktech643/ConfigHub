// Flutter web plugin registrant file.
//
// Generated file. Do not edit.
//

// @dart = 2.13
// ignore_for_file: type=lint

import 'package:audio_session/audio_session_web.dart';
import 'package:audioplayers_web/audioplayers_web.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter_web.dart';
import 'package:file_picker/_internal/file_picker_web.dart';
import 'package:flutter_native_splash/flutter_native_splash_web.dart';
import 'package:fluttertoast/fluttertoast_web.dart';
import 'package:image_picker_for_web/image_picker_for_web.dart';
import 'package:just_audio_web/just_audio_web.dart';
import 'package:record_web/record_web.dart';
import 'package:shared_preferences_web/shared_preferences_web.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void registerPlugins([final Registrar? pluginRegistrar]) {
  final Registrar registrar = pluginRegistrar ?? webPluginRegistrar;
  AudioSessionWeb.registerWith(registrar);
  AudioplayersPlugin.registerWith(registrar);
  EmojiPickerFlutterPluginWeb.registerWith(registrar);
  FilePickerWeb.registerWith(registrar);
  FlutterNativeSplashWeb.registerWith(registrar);
  FluttertoastWebPlugin.registerWith(registrar);
  ImagePickerPlugin.registerWith(registrar);
  JustAudioPlugin.registerWith(registrar);
  RecordPluginWeb.registerWith(registrar);
  SharedPreferencesPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
