import 'package:flutter/material.dart';
import 'package:native_animated_splash/screens/home_page.dart';

/// Flutter code sample for [NavigationBar].

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({Key? key}) : super(key: key);

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          backgroundColor: Color(0xffF4F8FF),
          animationDuration: Duration(milliseconds: 1500),
          labelBehavior: labelBehavior,
          selectedIndex: currentPageIndex,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(
                Icons.workspace_premium_outlined,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.workspace_premium_outlined,
                color: Color(0xff002856),
              ),
              label: 'LG Requests',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.monetization_on_outlined,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.monetization_on_outlined,
                color: Color(0xff002856),
              ),
              label: 'Finance Requests',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.history_outlined,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.history_outlined,
                color: Color(0xff002856),
              ),
              label: 'Activity',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.electrical_services_outlined,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.electrical_services_outlined,
                color: Color(0xff002856),
              ),
              label: 'Connect Data',
            ),
          ],
        ),
        body: [
          HomePage(),
          Scaffold(),
          Scaffold(),
          Scaffold(),
        ][currentPageIndex]);
  }
}
