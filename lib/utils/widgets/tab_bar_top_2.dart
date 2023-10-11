import 'package:flutter/material.dart';
import 'package:connected_db_firebase/theme/custom_color.dart';

Widget myTabBar2({required context}) {
  Color color1 = Theme.of(context)
      .extension<CustomColors>()!
      .sourceCustomcolor1!
      .withAlpha(155);

  Color color2 =
      Theme.of(context).colorScheme.onPrimaryContainer.withAlpha(155);
  return Container(
    height: 30,
    child: TabBar(
      labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontWeight: FontWeight.w600,
            // color: color,
          ),
      unselectedLabelColor: color2,
      overlayColor: null,
      // indicatorSize: TabBarIndicatorSize.label,
      // isScrollable: true,
      // indicatorPadding: EdgeInsets.zero,
      labelPadding: EdgeInsets.only(
        right: 5.0,
        left: 5.0,
      ),
      // indicatorWeight: 4,
      dividerColor: Colors.transparent,
      // padding: EdgeInsets.zero,
      indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.white),

      // enableFeedback: false,
      tabs: [
        Tab(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              // color: Color.fromARGB(147, 255, 255, 255),
              border: Border.all(color: color2.withAlpha(20), width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_downward_rounded),
                Text(
                  'IN',
                )
              ],
            ),
          ),
        ),
        Tab(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: color2.withAlpha(20), width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_upward_rounded),
                Text(
                  'OUT',
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
