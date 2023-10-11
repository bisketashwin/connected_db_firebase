import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:connected_db_firebase/utils/widgets/widgets.dart';

Widget commodityCardSmall(context, commodityTickets, index) {
  bool showDetails = false;
  var commodityTicket = commodityTickets[index];
  var pickAd = commodityTicket.pickUpAddress;
  var destAd = commodityTicket.destinationAddress;
  var color1 = Theme.of(context).colorScheme.onBackground.withOpacity(0.6);
  var defaultTextStyle = Theme.of(context).textTheme.bodySmall;
  return Center(
    child: GestureDetector(
      onDoubleTap: () {
        showDetails = !showDetails;
        //debugPrint('showDetails = $showDetails');
      },
      child: Card(
        child: Column(
          children: [
            topBannerStatus(context: context, status: commodityTicket.status),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 16, top: 5),
              child: Column(
                children: [
                  DefaultTextStyle(
                    style: defaultTextStyle!,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        iconLabel(
                          label: 'Ticket Number',
                          context: context,
                          mainText: commodityTicket.ticketNumber,
                          textSize: 'bodyMedium',
                          color: color1,
                        ),
                        Text(
                          '${commodityTicket.commodity}  ${commodityTicket.quantity}',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(commodityTicket.commodityOwner.firmName,
                            style: Theme.of(context).textTheme.bodyLarge),
                        Visibility(
                          visible: showDetails,
                          child: Text(
                              'Job Created by \n${commodityTicket.contactPerson} ( ${commodityTicket.phoneNumber} )'),
                        ),
                        const Divider(),
                        Text(
                          'Pick up point - ${pickAd.villageOrTaluk}',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          DateFormat('h:mm a  --  d MMM yyyy')
                              .format(commodityTicket.pickupDate),
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: color1),
                        ),
                        iconLabel(
                          label: 'Transport Provided by',
                          type: 'Transport',
                          context: context,
                          mainText: commodityTicket.transportType,
                          textSize: 'bodyMedium',
                          color: color1,
                        ),
                        Text(pickAd.firmName),
                        Text(pickAd.street),
                        // Text(pickAd.villageOrTaluk),
                        Text(
                            '${pickAd.zilla}, ${pickAd.state} - ${pickAd.pincode}'),
                        //Text(pickAd.state),

                        const Divider(),
                        Text(
                          'Destination - ${destAd.villageOrTaluk}',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(destAd.firmName),
                        Text(destAd.street),
                        // Text(destAd.villageOrTaluk),
                        Text(
                            '${destAd.zilla}, ${destAd.state} -${destAd.pincode}'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
