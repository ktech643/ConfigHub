import 'dart:async';
import 'package:demo/state/local_provider.dart';
import 'package:demo/views/admin_channel/admin_channel_page.dart';
import 'package:demo/views/admin_channel/admin_channel_setting_analytics_page.dart';
import 'package:demo/views/admin_channel/admin_channel_setting_page.dart';
import 'package:demo/views/admin_channel/admin_page.dart';
import 'package:demo/views/admin_channel/member_page.dart';
import 'package:demo/views/admin_channel/remove_user_page.dart';
import 'package:demo/views/chat/open_chat.dart';
import 'package:demo/views/create_channel/create_channel_page.dart';
import 'package:demo/views/detail_preview/detail_preview_page.dart';
import 'package:demo/views/home/media_link_files.dart';
import 'package:demo/views/home/mediaa.dart';
import 'package:demo/views/login/login_page.dart';
import 'package:demo/views/news/create_news_and_updates_page.dart';
import 'package:demo/views/news/news_page.dart';
import 'package:demo/views/onboarding/onboarding_page.dart';
import 'package:demo/views/profile/profile_edit.dart';
import 'package:demo/views/profile/profile_mediaall.dart';
import 'package:demo/views/public_profile/profile_chose.dart';
import 'package:demo/views/public_profile/public_profile_join.dart';
import 'package:demo/views/public_profile/public_profile_page.dart';
import 'package:demo/views/user_end/broadcast_screen.dart';
import 'package:demo/views/user_end/chat_setting.dart';
import 'package:demo/views/user_end/collection_screen.dart';
import 'package:demo/views/user_end/hub_joined.dart';
import 'package:demo/views/user_end/hub_joinedd.dart';
import 'package:demo/views/user_end/hub_list.dart';
import 'package:demo/views/user_end/hub_setting_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'l10n/l10n.dart';
import 'state/app_state.dart';
import 'utilities/constants.dart';
import 'views/bottom_nav_bar/bottom_nav_bar_page.dart';
import 'views/home/home_page.dart';
import 'views/home/search.dart';
import 'views/user_end/commentScreen.dart';

final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GestureBinding.instance.resamplingEnabled = true;
  String? language = 'en';
  await SharedPreferences.getInstance().then((prefs) async {
    if (prefs.getString("user") != null) {}
    if (prefs.getString(AppConstants.LANGUAGE_KEY) != null) {
      language = prefs.getString(AppConstants.LANGUAGE_KEY);
      language ??= 'en';
    }
  });
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      // statusBarIconBrightness: Brightness.light,
      // systemNavigationBarColor: AppColors.white,
      // systemNavigationBarIconBrightness: Brightness.light,
      // systemNavigationBarDividerColor: AppColors.white,
    ),
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  globalPrefs = await SharedPreferences.getInstance();
  runApp(Phoenix(
    child: App(
      language: language!,
    ),
  ));
}

var globalPrefs;

class App extends StatefulWidget {
  final String language;
  const App({Key? key, required this.language}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var user;

  @override
  void initState() {
    super.initState();
    // user=getDataFromSharedPref(AppConstants.USER_KEY);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(
              value: LocaleProvider(
                  locale: globalPrefs
                          .getString(AppConstants.LANGUAGE_KEY)
                          .toString()
                          .toLowerCase()
                          .contains('ar')
                      ? 'ar'
                      : 'en')),
          ChangeNotifierProvider.value(
              value: AppState(
                  user: user,
                  language: globalPrefs
                          .getString(AppConstants.LANGUAGE_KEY)
                          .toString()
                          .toLowerCase()
                          .contains('ar')
                      ? 'ar'
                      : 'en')),
        ],
        child: Consumer<LocaleProvider>(
            builder: (context, provider, child) => ScreenUtilInit(
                  designSize:
                      Size(AppConstants.designWidth, AppConstants.designHeight),
                  builder: (context, child) {
                    return MaterialApp(
                      debugShowCheckedModeBanner: false,
                      home: OnboardingScreen(),
                      // home: ChatSettingScreen(),
                      navigatorKey: navigatorKey,
                      routes: {
                        // '/home': (context) => AppNavBar(),
                        // '/subscription': (context) => Subscriptions(),
                        // '/welcome': (context) => WelcomeScreen(),
                        // '/register': (context) => PhoneVerification(),
                      },
                      localizationsDelegates: const [
                        AppLocalizations.delegate,
                        GlobalMaterialLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                      ],
                      supportedLocales: L10n.all,
                      locale: Provider.of<LocaleProvider>(context).locale,
                    );
                  },
                )));
  }
}
