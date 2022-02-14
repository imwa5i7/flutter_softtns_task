import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Nested Routing Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Root App Bar'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 72,
            color: Colors.cyanAccent,
            padding: const EdgeInsets.all(18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text('Change Inner Route: '),
                MaterialButton(
                  color: Colors.grey,
                  onPressed: () {
                    while (navigationKey.currentState!.canPop()) {
                      navigationKey.currentState!.pop();
                    }
                  },
                  child: const Text('to Root'),
                ),
              ],
            ),
          ),
          Expanded(
            child: NestedNavigator(
              navigationKey: navigationKey,
              initialRoute: '/',
              routes: {
                // default rout as '/' is necessary!
                '/': (context) => const PageOne(),
                '/two': (context) => const PageTwo(),
                '/three': (context) => const PageThree(),
              },
            ),
          ),
        ],
      ),
    );
  }
}

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

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Page One'),
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
                Navigator.of(context).pushNamed('/two');
              },
              child: const Text('to Page Two'),
            ),
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Page Two'),
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
                Navigator.of(context).pushNamed('/three');
              },
              child: const Text('go to next'),
            ),
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('go to back'),
            ),
          ],
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Page Three'),
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('go to back'),
            ),
          ],
        ),
      ),
    );
  }
}
