import 'package:flutter/material.dart';
import 'package:connected_db_firebase/utils/widgets/widgets.dart';

class Tab4 extends StatefulWidget {
  @override
  _Tab4State createState() => _Tab4State();
}

class _Tab4State extends State<Tab4> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        drawer: const MyDrawer1(),
        appBar: AppBar(
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
          title: Row(
            children: [
              Expanded(
                // child: myTabBar2(context: context),
                child: myTabBar2(context: context),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    // Add your settings button functionality here
                  },
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
          ],
        ),
      ),
    );
  }
}

// appBar: AppBar(
//         elevation: 0,
//         shadowColor: Colors.transparent,
//         backgroundColor: Colors.transparent,
//         scrolledUnderElevation: 0,
        // leading: Builder(
        //   builder: (BuildContext context) {
        //     return IconButton(
        //       icon: const Icon(Icons.person_2),
        //       padding: const EdgeInsets.only(left: 10),
        //       onPressed: () {
        //         Scaffold.of(context).openDrawer();
        //       },
        //     );
        //   },
        // ),
//       ),