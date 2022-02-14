import 'package:flutter/material.dart';
import 'package:flutter_softtns_task/config/routes.dart';
import 'package:flutter_softtns_task/screens/alarm/alarm_screen.dart';
import 'package:flutter_softtns_task/screens/downloads/downloads_screen.dart';
import 'package:flutter_softtns_task/screens/settings/settings_screen.dart';
import 'package:flutter_softtns_task/widgets/nested_navigator.dart';

class MainController extends ChangeNotifier {
  final List<String> titleList = ['Screen One', 'Screen Two', 'Screen Three', 'Screen Four'];
  int selectedIndex = 0;

  bool value = false;
  String title = "Screen One";

  onChanged(bool val) {
    value = val;
    notifyListeners();
  }

  List<Widget> getWidgetList({
    LabeledGlobalKey<NavigatorState>? homeKey,
    LabeledGlobalKey<NavigatorState>? settingsKey,
  }) {
    return [
      NestedNavigator(
        routes: RoutesManager.homeRoutes,
        navigationKey: homeKey!,
        initialRoute: Routes.home,
      ),
      NestedNavigator(
        routes: RoutesManager.settingRoutes,
        navigationKey: settingsKey!,
        initialRoute: Routes.settings,
      ),
      // SettingsScreen(),
      DownloadsScreen(),
      AlarmScreen(),
    ];
  }

  onChangeItem(int index) {
    selectedIndex = index;
    switch (index) {
      case 0:
        {
          title = 'Screen One';
        }
        break;
      case 1:
        {
          title = 'Screen Two';
        }
        break;
      case 2:
        {
          title = 'Screen Three';
        }
        break;
      case 3:
        {
          title = 'Screen Four';
        }
        break;
    }
    notifyListeners();
  }
}
