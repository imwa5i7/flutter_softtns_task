import 'package:flutter/material.dart';
import 'package:flutter_softtns_task/controllers/main_controller.dart';
import 'package:provider/provider.dart';

class DownloadsNested2Screen extends StatelessWidget {
  const DownloadsNested2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final main = context.watch<MainController>();
    return Container(
      color: Colors.red,
      alignment: Alignment.center,
      child: MaterialButton(
        onPressed: () {},
        child: const Text("Go Back"),
        color: Colors.greenAccent,
        textColor: Colors.white,
      ),
    );
  }
}
