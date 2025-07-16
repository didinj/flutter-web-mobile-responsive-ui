import 'package:flutter/material.dart';
import '../utils/responsive.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  final ScreenType screenType;
  final String title;

  const AppScaffold({
    super.key,
    required this.body,
    required this.screenType,
    this.title = 'Responsive App',
  });

  @override
  Widget build(BuildContext context) {
    if (screenType == ScreenType.desktop) {
      return Scaffold(
        body: Row(
          children: [
            NavigationRail(
              selectedIndex: 0,
              labelType: NavigationRailLabelType.all,
              onDestinationSelected: (index) {},
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  label: Text('Settings'),
                ),
              ],
            ),
            const VerticalDivider(thickness: 1, width: 1),
            Expanded(child: body),
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(title: Text(title)),
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(child: Text('Menu')),
              ListTile(leading: Icon(Icons.home), title: Text('Home')),
              ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
            ],
          ),
        ),
        body: body,
      );
    }
  }
}
