import 'package:flutter/material.dart';
import 'package:flutter_softtns_task/controllers/MainController.dart';
import 'package:provider/provider.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final main = context.watch<MainController>();
    return Container(
      color: Colors.pink,
      alignment: Alignment.center,
      child: MaterialButton(
        onPressed: () => main.popNested2(context),
        child: const Text("Go Back"),
        color: Colors.blueAccent,
        textColor: Colors.white,
      ),
    );
  }
}
