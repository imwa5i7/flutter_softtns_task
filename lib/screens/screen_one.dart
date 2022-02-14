import 'package:flutter/material.dart';
import 'package:flutter_softtns_task/controllers/MainController.dart';
import 'package:provider/provider.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final main = context.watch<MainController>();
    return Container(
      color: Colors.red,
      alignment: Alignment.center,
      child: MaterialButton(
        onPressed: () => main.changeTitle(context),
        child: const Text("Go To Next"),
        color: Colors.greenAccent,
        textColor: Colors.white,
      ),
    );
  }
}
