import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:connected_db_firebase/theme/custom_color.dart';
import 'package:provider/provider.dart';

import '../../../utils/models/models.dart';
import '../../../utils/widgets/widgets.dart';

class SubSiew5 extends StatefulWidget {
  //final context;

  const SubSiew5({
    super.key,
  });

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SubSiew5> {
  List<CommodityTicket> commodityTickets = [];
  @override
  void initState() {
    super.initState();
    fetchCommodityTickets();
  }

  // Method to fetch commodity tickets using the CommodityTicketController.
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
          // controller: scrollController,
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
                String thisGoodMovement = commodityTickets[index].goodMovement;
                bool thisComplete = commodityTickets[index]
                    .status
                    .isCaseInsensitiveContainsAny('complete');
                //debugPrint('index = $index Good movement = $thisGoodMovement complete = $thisComplete');
                if (thisGoodMovement == 'Outward' && thisComplete == false) {
                  return addCommodityMin1(
                      commodityTickets: commodityTickets, index: index);
                } else {
                  return Container();
                }
              },
            ),
            // cardWithBanner(context, _showDetails),
          ],
        ),
      ),
    );
  }
}
