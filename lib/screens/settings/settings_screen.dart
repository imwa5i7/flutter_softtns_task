import 'package:flutter/material.dart';
import 'package:flutter_softtns_task/config/routes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Settings Screen'),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.settingsOne);
            },
            child: const Text('Go Next'),
            color: Colors.blue,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
