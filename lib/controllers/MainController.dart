import 'package:flutter/material.dart';

class MainController extends ChangeNotifier {
  final List<String> titleList = ['Screen One', 'Screen Two', 'Screen Three', 'Screen Four'];
  int selectedIndex = 0;

  bool value = false;
  String title = "Screen One";

  changeTitle(BuildContext context) {
    title = 'Nested Title';
    Navigator.pushNamed(context, '/one');
    notifyListeners();
  }

  changeTitle2(BuildContext context) {
    title = 'Nested Title 2';
    Navigator.pushNamed(context, '/two');
    notifyListeners();
  }

  popNested(BuildContext context) {
    title = 'Screen One';
    Navigator.pop(context);
    notifyListeners();
  }

  popNested2(BuildContext context) {
    title = 'Nested Title';
    Navigator.pop(context);
    notifyListeners();
  }

  onChanged(bool val) {
    value = val;
    notifyListeners();
  }

  onChangeItem(int index) {
    selectedIndex = index;
    switch (index) {
      case 0:
        {
          title = 'Screen One';
        }
        break;
      case 1:
        {
          title = 'Screen Two';
        }
        break;
      case 2:
        {
          title = 'Screen Three';
        }
        break;
      case 3:
        {
          title = 'Screen Four';
        }
        break;
    }
    notifyListeners();
  }
}
