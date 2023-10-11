import 'package:flutter/material.dart';

import '../../theme/custom_color.dart';

Widget myTabBar1({required context}) {
  var color1 = Theme.of(context).colorScheme.secondary;
  return TabBar(
    indicatorColor: color1,
    labelColor: color1,
    labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.w600,
        ),
    unselectedLabelColor:
        Theme.of(context).colorScheme.onPrimaryContainer.withAlpha(115),
    indicatorSize: TabBarIndicatorSize.label,
    isScrollable: true,
    indicatorPadding: EdgeInsets.zero,
    labelPadding: EdgeInsets.only(right: 10.0, left: 10.0),
    indicatorWeight: 4,
    dividerColor: Colors.transparent,
    padding: EdgeInsets.zero,
    tabs: <Widget>[
      Tab(
        child: Row(
          children: [
            Icon(Icons.notifications_active),
            Text(
              'ALERT',
            )
          ],
        ),
      ),
      Tab(
        child: Row(
          children: [
            Icon(Icons.arrow_downward_rounded),
            Text(
              'IN',
            )
          ],
        ),
      ),
      Tab(
        child: Row(
          children: [
            Icon(Icons.arrow_upward_rounded),
            Text(
              'OUT',
            ),
          ],
        ),
      ),
    ],
  );
}
