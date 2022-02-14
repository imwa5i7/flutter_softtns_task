import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_softtns_task/controllers/MainController.dart';
import 'package:flutter_softtns_task/nested_navigator.dart';
import 'package:flutter_softtns_task/screens/screen_one.dart';
import 'package:flutter_softtns_task/screens/screen_three.dart';
import 'package:flutter_softtns_task/screens/screen_two.dart';
import 'package:flutter_softtns_task/widgets/main_appbar.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();
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
      body: NestedNavigator(
        routes: {
          '/': (ctx) => const ScreenOne(),
          '/one': (ctx) => const ScreenTwo(),
          '/two': (ctx) => const ScreenThree(),
        },
        navigationKey: navigationKey,
        initialRoute: '/',
      ),
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
