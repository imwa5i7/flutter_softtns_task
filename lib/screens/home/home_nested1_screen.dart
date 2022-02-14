import 'package:flutter/material.dart';
import 'package:flutter_softtns_task/config/routes.dart';
import 'package:flutter_softtns_task/controllers/main_controller.dart';
import 'package:provider/provider.dart';

class HomeNested1Screen extends StatelessWidget {
  const HomeNested1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final main = context.watch<MainController>();
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Home Screen Nested One"),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.homeTwo);
            },
            child: const Text("Go Next"),
            color: Colors.blueAccent,
            textColor: Colors.white,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Go Back"),
            color: Colors.blueAccent,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
