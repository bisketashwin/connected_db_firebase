// import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

import 'package:material3_app/theme/custom_color.dart';
import 'package:material3_app/utils/models/controllers.dart';
import 'package:material3_app/utils/models/models.dart';
import 'package:material3_app/utils/widgets/widgets.dart';
import 'package:provider/provider.dart';

class Tab2A extends StatefulWidget {
  final String title;

  const Tab2A({Key? key, required this.title}) : super(key: key);

  @override
  // State<Tab2A> createState() => _Tab2AState();
  _Tab2AState createState() => _Tab2AState();
}

class _Tab2AState extends State<Tab2A> {
  // Map<String, bool> _showDetails = {
  //   'card 1': false,
  //   'card info': false,
  //   'card random': false,
  // };
  @override
  Widget build(BuildContext context) {
    List<CommodityTicket> commodityTickets =
        Provider.of<CommodityTicketController>(context).commodityTickets;

    return Scaffold(
      backgroundColor:
          Theme.of(context).extension<CustomColors>()!.sourceCustomcolor2,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: ListView(
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
                // return Text(commodityTickets[index].companyName);
                return addCommodityDetails1(
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
