import 'package:flutter/material.dart';

final RouteObserver<Route> routeObserver = RouteObserver<Route>();

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> with RouteAware {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context));
  }

  Future _navigate(BuildContext context, String routeName) async {
    return await Navigator.of(context).popAndPushNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        ListTile(
          title: Text('Page 1'),
          onTap: () => _navigate(context, '/page1'),
        ),
        ListTile(
          title: Text('Page 2'),
          onTap: () => _navigate(context, '/page2'),
        ),
        ListTile(
          title: Text('Page 3'),
          onTap: () => _navigate(context, '/page3'),
        ),
        ListTile(
          title: Text('On boarding'),
          onTap: () => _navigate(context, '/onboarding'),
        )
      ],
    ));
  }
}
