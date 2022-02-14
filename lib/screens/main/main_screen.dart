import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_softtns_task/controllers/main_controller.dart';
import 'package:flutter_softtns_task/widgets/nested_navigator.dart';
import 'package:flutter_softtns_task/config/routes.dart';
import 'package:flutter_softtns_task/screens/alarm/alarm_screen.dart';
import 'package:flutter_softtns_task/screens/downloads/downloads_screen.dart';
import 'package:flutter_softtns_task/screens/home/home_screen.dart';
import 'package:flutter_softtns_task/screens/home/home_nested2_screen.dart';
import 'package:flutter_softtns_task/screens/home/home_nested1_screen.dart';
import 'package:flutter_softtns_task/screens/settings/settings_nested1_screen.dart';
import 'package:flutter_softtns_task/screens/settings/settings_screen.dart';
import 'package:flutter_softtns_task/widgets/main_appbar.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final navigationKey = LabeledGlobalKey<NavigatorState>('one');
  final settingNavigationKey = LabeledGlobalKey<NavigatorState>('two');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final main = context.watch<MainController>();
    return Scaffold(
      appBar: MainAppBar(
        title: main.title,
      ),
      body: main.getWidgetList(
        homeKey: navigationKey,
        settingsKey: settingNavigationKey,
      )[main.selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: main.selectedIndex,
        selectedFontSize: 11,
        unselectedItemColor: CupertinoColors.black,
        selectedItemColor: Colors.blueAccent,
        onTap: (index) => main.onChangeItem(index),
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Screen One'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings), label: 'Screen Two'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.share_solid), label: 'Screen Three'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.alarm), label: 'Screen Four'),
        ],
      ),
    );
  }
}
