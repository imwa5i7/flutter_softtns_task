import 'package:flutter/material.dart';
import 'package:flutter_softtns_task/controllers/main_controller.dart';
import 'package:flutter_softtns_task/screens/main/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => MainController())],
      child: MaterialApp(
        title: 'Nested Navigation',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainScreen(),
      ),
    );
  }
}
