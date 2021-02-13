import 'package:flow_builder_sample/drawer.dart';
import 'package:flow_builder_sample/onboarding_flow.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/page1',
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) {
          return _makeRoutes(
              context: context,
              routeName: settings.name,
              arguments: settings.arguments);
        });
      },
    );
  }

  Widget _makeRoutes(
      {@required BuildContext context,
      @required String routeName,
      Object arguments}) {
    switch (routeName) {
      case '/page1':
        return Page1();
      case '/page2':
        return Page2();
      case '/page3':
        return Page3();
      case '/onboarding':
        return OnboardingFlow();
      default:
        return Page1();
    }
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 1'),
        ),
        drawer: AppDrawer(),
        body: Center(child: Text('Page 1')));
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 2'),
        ),
        drawer: AppDrawer(),
        body: Center(child: Text('Page 2')));
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 3'),
        ),
        drawer: AppDrawer(),
        body: Center(child: Text('Page 3')));
  }
}
