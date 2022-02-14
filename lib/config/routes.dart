import 'package:flutter/material.dart';
import 'package:flutter_softtns_task/screens/alarm/alarm_nested1_screen.dart';
import 'package:flutter_softtns_task/screens/alarm/alarm_nested2_screen.dart';
import 'package:flutter_softtns_task/screens/alarm/alarm_nested3_screen.dart';
import 'package:flutter_softtns_task/screens/alarm/alarm_screen.dart';
import 'package:flutter_softtns_task/screens/downloads/downloads_nested1_screen.dart';
import 'package:flutter_softtns_task/screens/downloads/downloads_nested2_screen.dart';
import 'package:flutter_softtns_task/screens/downloads/downloads_screen.dart';
import 'package:flutter_softtns_task/screens/home/home_nested1_screen.dart';
import 'package:flutter_softtns_task/screens/home/home_nested2_screen.dart';
import 'package:flutter_softtns_task/screens/home/home_screen.dart';
import 'package:flutter_softtns_task/screens/settings/settings_nested1_screen.dart';
import 'package:flutter_softtns_task/screens/settings/settings_screen.dart';

class RoutesManager {
  static Map<String, WidgetBuilder> homeRoutes = {
    Routes.home: (ctx) => const HomeScreen(),
    Routes.homeOne: (ctx) => const HomeNested1Screen(),
    Routes.homeTwo: (ctx) => const HomeNested2Screen(),
  };
  static Map<String, WidgetBuilder> settingRoutes = {
    Routes.settings: (ctx) => const SettingsScreen(),
    Routes.settingsOne: (ctx) => const SettingsNested1Screen(),
  };
  static Map<String, WidgetBuilder> downloadRoutes = {
    Routes.downloads: (ctx) => const DownloadsScreen(),
    Routes.downloadsOne: (ctx) => const DownloadsNested1Screen(),
    Routes.downloadsTwo: (ctx) => const DownloadsNested2Screen(),
  };
  static Map<String, WidgetBuilder> alarmRoutes = {
    Routes.alarm: (ctx) => const AlarmScreen(),
    Routes.alarmOne: (ctx) => const AlarmsNest1Screen(),
    Routes.alarmTwo: (ctx) => const AlarmsNest2Screen(),
    Routes.alarmThree: (ctx) => const AlarmsNested3Screen(),
  };
}

class Routes {
  static const String home = '/';
  static const String homeOne = '/home-one';
  static const String homeTwo = '/home-two';
  static const String settings = '/';
  static const String settingsOne = '/settings-one';
  static const String downloads = '/';
  static const String downloadsOne = '/downloads-one';
  static const String downloadsTwo = '/downloads-two';
  static const String alarm = '/';
  static const String alarmOne = '/alarm-one';
  static const String alarmTwo = '/alarm-two';
  static const String alarmThree = '/alarm-three';
}
