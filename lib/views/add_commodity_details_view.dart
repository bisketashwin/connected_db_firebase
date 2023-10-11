import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:connected_db_firebase/utils/models/models.dart';
import 'package:connected_db_firebase/utils/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../theme/custom_color.dart';
import '../utils/commonactions/common_actions.dart';

//Alerts sub segregated as QC done
//TODO: other there could be more specific call to action in alert that need to be worked on
class AddCommodityDetailsView extends StatefulWidget {
  final int index;

  const AddCommodityDetailsView({
    Key? key,
    this.index = 2,
  }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<AddCommodityDetailsView> {
  // late List<CommodityTicket> commodityTickets = widget.commodityTickets;
  // late int index = widget.index;
  final int index = Get.arguments['index']; // this is getX implementation
  bool showDetails = false;
  double bottomPadding = 15;
  String ticketStatus = '';

  @override
  Widget build(BuildContext context) {
    return addCommDetails(context, this);
  }

  Widget addCommDetails(context, state) {
    List<CommodityTicket> commodityTickets =
        Provider.of<CommodityTicketController>(context).commodityTickets;
    int index = state.index;
    List<FarmAddress> farmAddresses =
        Provider.of<FarmAddressController>(context).farmAddresses;
    List<WarehouseAddress> warehouseAddresses =
        Provider.of<WarehouseAddressController>(context).warehouseAddresses;
    List<CommodityOwner> commodityOwners =
        Provider.of<CommodityOwnerController>(context).commodityOwners;
    List<User> users = Provider.of<UserController>(context).users;

    if (commodityTickets != []) {
      /////////////////

      var commodityTicket = commodityTickets[index];

      var ownerId = commodityTicket.commodityOwnerId;
      var pickupId = commodityTicket.pickUpAddressId;
      var destId = commodityTicket.destinationAddressId;
      var userId = commodityTicket.destinationAddressId;

      CommodityOwner comOwner = commodityOwners
          .firstWhere((commodityOwner) => commodityOwner.id == ownerId);
      FarmAddress pickAd =
          farmAddresses.firstWhere((address) => address.id == pickupId);
      WarehouseAddress destAd =
          warehouseAddresses.firstWhere((address) => address.id == destId);
      User user = users.firstWhere((user) => user.id == userId);

      if (commodityTicket.status.isCaseInsensitiveContainsAny('attention')) {
        ticketStatus = commodityTicket.status;
        showDetails = true;
        bottomPadding = 0;
      } else if (commodityTicket.status
          .isCaseInsensitiveContainsAny('complete')) {
        ticketStatus = commodityTicket.status;
        showDetails = true;
        bottomPadding = 0;
      }

      ///////////
      var color1 = Theme.of(context).colorScheme.onBackground.withOpacity(0.6);
      var defaultTextStyle = Theme.of(context).textTheme.bodyLarge;
      var color2 =
          Theme.of(context).extension<CustomColors>()!.sourceCustomcolor2;

      return Scaffold(
        bottomSheet: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, -0.5), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
          height: 60,
          // color: color2,
          child: Visibility(
              visible: showDetails,
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: getBigButtons(ticketStatus, context),
              )),
        ),
        body: NestedScrollView(
          // controller: scrollController,
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBocIsScrolled) => [
            SliverAppBar(
              title: Text('Commodity Details 4'),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(15),
                child: topBannerStatus(
                  context: context,
                  status: commodityTicket.status,
                  noRound: true,
                  textStle: 'bodyMedium',
                  timeString: DateFormat(': d MMM yyyy')
                      .format(commodityTicket.pickupDate),
                ),
              ),
            )
          ],

          body: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 50),
            child: ListView(
              children: [
                DefaultTextStyle(
                  style: defaultTextStyle!,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          getGcommodityThumb(
                              name: commodityTicket.commodity, size: 100.0),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${commodityTicket.commodity}  ${commodityTicket.quantity}',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            'Owner: ${comOwner.firmName}',
                          ),
                          Row(
                            children: [
                              iconLabel(
                                context: context,
                                mainText: commodityTicket.ticketNumber,
                                textSize: 'bodyMedium',
                                color: color1,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              iconLabel(
                                context: context,
                                mainText:
                                    '${commodityTicket.transportType} Transport',
                                textSize: 'bodyMedium',
                                color: color1,
                                type: 'Transport',
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                          'Job Created by \n${user.name}  ${user.phoneNumbers}'),
                      const Divider(),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pick up',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(pickAd.firmName),
                          Text(pickAd.street),
                          Text(
                            pickAd.villageOrTaluk,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                              '${pickAd.zilla}, ${pickAd.state} - ${pickAd.pincode}'),
                        ],
                      ),
                      //Text(pickAd.state),

                      const Divider(),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Destination',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(destAd.firmName),
                          Text(destAd.street),
                          Text(
                            destAd.villageOrTaluk,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                              '${destAd.zilla}, ${destAd.state} -${destAd.pincode}'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text('Commodity Details'),
        ),
        body: Center(
            child: Container(
          child: Text('nothing to show'),
        )),
      );
    }
  }
}
