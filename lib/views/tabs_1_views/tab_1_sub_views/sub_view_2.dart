import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:material3_app/theme/custom_color.dart';
import 'package:provider/provider.dart';

import '../../../utils/commonactions/common_actions.dart';
import '../../../utils/constants/constants_1.dart';
import '../../../utils/models/controllers.dart';
import '../../../utils/models/models.dart';
import '../../../utils/widgets/widgets.dart';

class SubSiew2 extends StatefulWidget {
  //final context;

  const SubSiew2({
    super.key,
  });

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SubSiew2> {
  // Create two lists to store the items in the two list views.

  List<String> list2 = ["Item 4", "Item 5", "Item 6"];

  final List<bool> _showlist2 = [
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return parentListView(context);
  }

  // Create a parent list view to contain the two list views.
  Widget parentListView(context) {
    var color2 =
        Theme.of(context).colorScheme.onPrimaryContainer.withAlpha(145);
    var color1 = Theme.of(context).colorScheme.secondary;
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 3.0),
          child: Text(
            'Items need your attention',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: color2,
                ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        listView2(context),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Text(
            'Thats it for now',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  // color: color,
                ),
          ),
        )
      ],
    );
  }
  // Create two list views, one for each list.

  Widget listView2(context) {
    List<CommodityTicket> commodityTickets =
        Provider.of<CommodityTicketController>(context).commodityTickets;
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: list2.length,
      itemBuilder: (context, index) {
        return myCard(
            type: 'any',
            index: index,
            myList: _showlist2,
            commodityTickets: commodityTickets);
      },
    );
  }

  Widget myCard(
      {type = 'any', index, required myList, required commodityTickets}) {
    // var myList;
    var commodityTicket = commodityTickets[index];
    var color1 = CommodityTicketStatus.outward.color;
    return Card(
      child: Row(
        children: [
          Column(
            children: [
              RotatedBox(
                quarterTurns: 3,
                child: Container(
                  alignment: Alignment.center,
                  // height: double.infinity,
                  width: (myList[index] != true) ? 90 : 132,
                  // height: 15,
                  // width: double.infinity,
                  decoration: BoxDecoration(
                    color: color1,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                  ),
                  child: Text(
                    'OUTWARD',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  switch (type) {
                    /// this will toggle all open cards and then open clicked card
                    case 'only1':
                      for (int i = 0; i < myList.length; i++) {
                        myList[i] = i == index;
                      }
                      break;
                    default:

                      /// this will just toggle clicked card it will not care of state of other cards
                      myList[index] = !myList[index];
                  }

                  // Set the state. wihtout this the UI would not refresh
                  setState(() {});
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              getGcommodityThumb(
                                  name: commodityTicket.commodity),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Delivery date ${DateFormat(' d MMM yyyy').format(commodityTicket.pickupDate).capitalize}',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                '${commodityTicket.commodity}  ${commodityTicket.quantity}',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              SizedBox(
                                width: 250,
                                child: Text(
                                  '⚠ Attention aprove tranporation quation get intouch with manger',
                                  style: TextStyle(fontSize: 12),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: myList[index],
                child: actionChips2(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget actionChips2(context) {
  // var color1 = CommodityTicketStatus.outward.color;
  var color2 = Theme.of(context).colorScheme.onPrimaryContainer.withAlpha(145);
  var color1 = Theme.of(context).colorScheme.secondary;
  var textStyle1 = Theme.of(context)
      .textTheme
      .bodySmall!
      .copyWith(color: color2, fontWeight: FontWeight.w700);

  return Padding(
    padding: const EdgeInsets.only(left: 10, bottom: 0),
    child: Row(
      children: [
        TextButton.icon(
          onPressed: () {
            // Perform some action
          },
          icon: Icon(
            Icons.call,
            color: color2,
            size: 20,
          ),
          label: Text(
            'CALL MANAGER',
            style: textStyle1,
          ),
        ),
        TextButton.icon(
          onPressed: () {
            // Perform some action
          },
          icon: Icon(
            Icons.list,
            color: color2,
            size: 20,
          ),
          label: Text(
            'OTHER ACTIONS',
            style: textStyle1,
          ),
        ),
      ],
    ),
  );
}
