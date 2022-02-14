import 'package:flutter/material.dart';

class HomeNested2Screen extends StatelessWidget {
  const HomeNested2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Home Screen Nested Two"),
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
