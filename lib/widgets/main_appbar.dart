import 'package:flutter/material.dart';
import 'package:flutter_softtns_task/controllers/MainController.dart';
import 'package:provider/provider.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String? title;
  const MainAppBar({
    Key? key,
    this.height = 100,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: Colors.blue,
      padding: const EdgeInsets.only(left: 16, top: 30, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title!,
                style: const TextStyle(color: Colors.white),
              ),
              Consumer<MainController>(builder: (context, main, child) {
                return Switch(
                  value: main.value,
                  activeColor: Colors.orangeAccent,
                  onChanged: (index) => main.onChanged(index),
                );
              })
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, height);
}
