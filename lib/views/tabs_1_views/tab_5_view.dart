import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../theme/custom_color.dart';
import '../../utils/widgets/widgets.dart';

class Tab5 extends StatefulWidget {
  final VoidCallback showNavigation;
  final VoidCallback hideNavigation;

  const Tab5(
      {Key? key, required this.showNavigation, required this.hideNavigation})
      : super(key: key);

  @override
  State<Tab5> createState() => _Tab5State();
}

class _Tab5State extends State<Tab5> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        widget.showNavigation();
      } else {
        widget.hideNavigation();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    scrollController.removeListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        widget.showNavigation();
      } else {
        widget.hideNavigation();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor:
            Theme.of(context).extension<CustomColors>()!.sourceCustomcolor2,
        drawer: const MyDrawer1(),
        body: NestedScrollView(
          controller: scrollController,
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBocIsScrolled) => [
            SliverAppBar(
                // backgroundColor: Colors.amber,
                expandedHeight: 10,
                elevation: 0,
                floating: true,
                snap: true,
                // pinned: true,
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
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: IconButton(
                      icon: const Icon(Icons.call),
                      onPressed: () {
                        // Add your settings button functionality here
                      },
                    ),
                  ),
                ],
                title: Center(child: myTabBar2(context: context))),
          ],
          body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const TabBarView(
              children: <Widget>[
                DummyLongList(),
                DummyLongList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
