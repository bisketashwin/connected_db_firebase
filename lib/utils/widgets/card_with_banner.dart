import 'package:flutter/material.dart';

import 'widgets.dart';

Widget cardWithBanner(BuildContext context, showDetails) {
  // var color1 = Theme.of(context).colorScheme.onBackground.withOpacity(0.6);

  return GestureDetector(
    onTap: () {
      showDetails['card 1'] = !showDetails['card 1'];
      //debugPrint('_showDetails[card 1] = ${showDetails['card 1']}');
      // setState(() {});
    },
    child: Card(
      color: Colors.orange,
      elevation: 10,
      // shadowColor: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          topBannerStatus(
            context: context,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text('This would be visible all time. showDetails'),
          ),
          Visibility(
            visible: showDetails['card 1'],
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                  'This would show only if showDetails is ${showDetails['card 1']}'),
            ),
          ),
        ],
      ),
    ),
  );
}
