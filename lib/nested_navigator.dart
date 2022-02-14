import 'package:flutter/material.dart';

class NestedNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigationKey;
  final String initialRoute;
  final Map<String, WidgetBuilder> routes;

  const NestedNavigator({
    Key? key,
    required this.navigationKey,
    required this.initialRoute,
    required this.routes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Navigator(
        key: navigationKey,
        initialRoute: initialRoute,
        onGenerateRoute: (RouteSettings routeSettings) {
          WidgetBuilder? builder = routes[routeSettings.name];
          if (routeSettings.name == initialRoute) {
            return PageRouteBuilder(
              pageBuilder: (context, __, ___) => builder!(context),
              settings: routeSettings,
            );
          } else {
            return MaterialPageRoute(
              builder: builder!,
              settings: routeSettings,
            );
          }
        },
      ),
      onWillPop: () {
        if (navigationKey.currentState!.canPop()) {
          navigationKey.currentState!.pop();
          return Future<bool>.value(false);
        }
        return Future<bool>.value(true);
      },
    );
  }
}
