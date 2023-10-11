import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'tabs_1_views/tabs_1_views.dart';

class HomeView31 extends StatefulWidget {
  const HomeView31({Key? key}) : super(key: key);

  @override
  State<HomeView31> createState() => _HomeView3State();
}

class _HomeView3State extends State<HomeView31> {
  bool visible = true;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          // Tab3(),
          Tab6(
            hideNavigation: hideNav,
            showNavigation: showNav,
          ),

          Tab2(
            hideNavigation: hideNav,
            showNavigation: showNav,
          ),
          Tab5(
            hideNavigation: hideNav,
            showNavigation: showNav,
          ),
        ],
      ),
      bottomNavigationBar: AnimatedContainer(
        duration: Duration(milliseconds: 1000),
        curve: Curves.fastLinearToSlowEaseIn,
        height: visible ? 75 : 0,
        child: Wrap(
          children: [
            NavigationBar(
              onDestinationSelected: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              // indicatorColor: Colors.amber[800],
              selectedIndex: currentIndex,
              destinations: const <Widget>[
                NavigationDestination(
                  selectedIcon: Icon(Icons.home),
                  icon: Icon(Icons.home_outlined),
                  label: 'Move Goods',
                ),
                NavigationDestination(
                  selectedIcon: Icon(Icons.business),
                  icon: Icon(Icons.business_outlined),
                  label: 'Business',
                ),
                NavigationDestination(
                  selectedIcon: Icon(Icons.school),
                  icon: Icon(Icons.school_outlined),
                  label: 'School',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void hideNav() {
    setState(() {
      visible = false;
    });
  }

  void showNav() {
    setState(() {
      visible = true;
    });
  }

  tabDummy() {
    return Center(
      child: Container(
        color: Colors.amber,
        child: Text('Dummy'),
      ),
    );
  }
}
