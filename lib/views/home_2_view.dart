///// the bottom navigation hides on scroll up and come back on scroll down this is different from home_view
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:connected_db_firebase/utils/widgets/widgets.dart';

import 'tabs_1_views/tabs_1_views.dart';

class HomeView2 extends StatefulWidget {
  const HomeView2({Key? key}) : super(key: key);

  @override
  State<HomeView2> createState() => _HomeView2State();
}

class _HomeView2State extends State<HomeView2> {
  bool visible = true;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: true,
      extendBodyBehindAppBar: true,
      drawer: const MyDrawer1(),
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.person_2),
              padding: const EdgeInsets.only(left: 10),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: [
          Container(child: Tab1(title: 'title')),
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
                    icon: Icon(Icons.favorite), label: "Favorite"),
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
