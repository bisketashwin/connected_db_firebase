///// the bottom navigation hides on scroll up and come back on scroll down this is different from home_view
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:connected_db_firebase/utils/widgets/widgets.dart';

import 'tabs_1_views/tabs_1_views.dart';

class HomeViewOld extends StatefulWidget {
  const HomeViewOld({Key? key}) : super(key: key);

  @override
  State<HomeViewOld> createState() => _HomeViewOldState();
}

class _HomeViewOldState extends State<HomeViewOld> {
  bool visible = true;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          Tab1(title: 'title'),
          Tab5(
            hideNavigation: hideNav,
            showNavigation: showNav,
          ),
          Tab2(
            hideNavigation: hideNav,
            showNavigation: showNav,
          ),
        ],
      ),
      bottomNavigationBar: AnimatedContainer(
        duration: Duration(milliseconds: 1000),
        curve: Curves.fastLinearToSlowEaseIn,
        height: visible ? kBottomNavigationBarHeight : 0,
        child: Wrap(
          children: [
            BottomNavigationBar(
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: "Fav"),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profile"),
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
