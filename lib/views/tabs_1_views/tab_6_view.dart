import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:connected_db_firebase/views/tabs_1_views/tab_1_sub_views/sub_view_1.dart';
import 'package:provider/provider.dart';

import '../../theme/custom_color.dart';
import '../../utils/models/controllers.dart';
import '../../utils/models/models.dart';
import '../../utils/widgets/widgets.dart';
import 'tab_1_sub_views/sub_view_2.dart';
import 'tab_1_sub_views/sub_view_3.dart';
import 'tab_1_sub_views/sub_view_4.dart';
import 'tab_1_sub_views/sub_view_5.dart';

class Tab6 extends StatefulWidget {
  final VoidCallback showNavigation;
  final VoidCallback hideNavigation;

  const Tab6(
      {Key? key, required this.showNavigation, required this.hideNavigation})
      : super(key: key);

  @override
  State<Tab6> createState() => _Tab6State();
}

class _Tab6State extends State<Tab6> {
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
      length: 3,
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
                // TODO: this did not show any effect on 5.0 i would like the app bar to elevate on scroll need to check if background colour transperancy is making it not show up
                floating: true,
                snap: true,
                // pinned: true,
                // shadowColor: Colors.transparent,
                // backgroundColor: Colors.transparent,
                scrolledUnderElevation: 5,
                leading: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: Icon(
                        Icons.person_2,
                        color: Theme.of(context)
                            .colorScheme
                            .onPrimaryContainer
                            .withAlpha(115),
                      ),
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
                      icon: Icon(
                        Icons.call,
                        color: Theme.of(context)
                            .colorScheme
                            .onPrimaryContainer
                            .withAlpha(115),
                      ),
                      onPressed: () {
                        // Add your settings button functionality here
                      },
                    ),
                  ),
                ],
                title: Center(child: myTabBar1(context: context))),
          ],
          body: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: TabBarView(
              children: <Widget>[
                // TODO: after adding extra screen or removing screen do this
                // go to DefaultTabController(  length: 3, change it
                SubSiew3(),
                SubSiew4(),
                SubSiew5(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget commodityList(context) {
//   List<CommodityTicket> commodityTickets =
//       Provider.of<CommodityTicketController>(context).commodityTickets;
//   return ListView.builder(
//     shrinkWrap: true,

//     ///NOTE:  these 3 are super critical properties for nested lsit views to wrok
//     primary: false,

//     ///NOTE:  these 3 are super critical properties for nested lsit views to wrok
//     itemCount: commodityTickets.length,
//     itemBuilder: (context, index) {
//       // return Text(commodityTickets[index].companyName);
//       return addCommodityDetails1(
//           commodityTickets: commodityTickets, index: index);
//     },
//   );
//   // cardWithBanner(context, _showDetails),
// }
