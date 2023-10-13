import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:intl/intl.dart';

import 'package:connected_db_firebase/theme/custom_color.dart';
// import 'package:connected_db_firebase/utils/models/controllers.dart';
import 'package:connected_db_firebase/utils/models/models.dart';

import 'package:connected_db_firebase/utils/widgets/widgets.dart';
import 'package:provider/provider.dart';

class Tab2 extends StatefulWidget {
  final VoidCallback showNavigation;
  final VoidCallback hideNavigation;

  Tab2({Key? key, required this.showNavigation, required this.hideNavigation});

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  ScrollController scrollController = ScrollController();
  List<CommodityTicket> commodityTickets = [];
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
    // Fetch commodity tickets when the widget is initialized.
    fetchCommodityTickets();
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

  void fetchCommodityTickets() async {
    final controller =
        Provider.of<CommodityTicketController>(context, listen: false);
    commodityTickets = await controller.getCommodityTickets();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).extension<CustomColors>()!.sourceCustomcolor2,
      body: Padding(
        padding: EdgeInsets.only(left: 5, right: 5.0),
        child: ListView(
          controller: scrollController,
          shrinkWrap:
              true, //NOTE: these 3 are super critical properties for nested lsit views to wrok
          children: [
            ListView.builder(
              shrinkWrap: true,

              ///NOTE:  these 3 are super critical properties for nested lsit views to wrok
              primary: false,

              ///NOTE:  these 3 are super critical properties for nested lsit views to wrok
              itemCount: commodityTickets.length,
              itemBuilder: (context, index) {
                return addCommodityMin1(
                    commodityTickets: commodityTickets, index: index);
              },
            ),
            // cardWithBanner(context, _showDetails),
          ],
        ),
      ),
    );
  }
}
