import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'tabs_1_views/tabs_1_views.dart';

class HomeView3 extends StatefulWidget {
  const HomeView3({Key? key}) : super(key: key);

  @override
  State<HomeView3> createState() => _HomeView3State();
}

class _HomeView3State extends State<HomeView3> {
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
                  selectedIcon: FaIcon(FontAwesomeIcons.truck),
                  icon: FaIcon(FontAwesomeIcons.truckFast),
                  label: 'Move Goods',
                ),
                NavigationDestination(
                  selectedIcon: FaIcon(FontAwesomeIcons.moneyBill1Wave),
                  icon: FaIcon(FontAwesomeIcons.moneyBillTrendUp),
                  label: 'Loan or Sell',
                ),
                NavigationDestination(
                  selectedIcon: FaIcon(FontAwesomeIcons.boxesStacked),
                  icon: FaIcon(FontAwesomeIcons.warehouse),
                  label: 'Stock',
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
}
