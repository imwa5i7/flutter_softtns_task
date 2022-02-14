import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_softtns_task/config/routes.dart';
import 'package:flutter_softtns_task/controllers/main_controller.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? home = ModalRoute.of(context)!.settings.name;
    debugPrint("//////////////////");
    debugPrint(home);
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Home Screen"),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.homeOne);
            },
            child: const Text("Go To Next"),
            color: Colors.blue,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
