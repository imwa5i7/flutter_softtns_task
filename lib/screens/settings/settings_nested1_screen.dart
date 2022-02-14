import 'package:flutter/material.dart';

class SettingsNested1Screen extends StatelessWidget {
  const SettingsNested1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Settings Nested 1 Screen'),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go Back'),
            color: Colors.blue,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
