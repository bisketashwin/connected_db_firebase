import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget iconLabel(
    {String type = '',
    String label = '',
    required context,
    String mainText = '',
    required String textSize,
    required Color color}) {
  TextStyle style;
  double iconSize;
  IconData myIcon;
///////////
  switch (textSize) {
    case 'bodyMedium':
      style = Theme.of(context).textTheme.bodyMedium!.copyWith(
          // fontWeight: FontWeight.w600,
          // color: color,
          );
      iconSize = 16.0;
      break;
    case 'bodySmall':
      style = Theme.of(context).textTheme.bodySmall!.copyWith(
          // fontWeight: FontWeight.w600,
          // color: color,
          );
      iconSize = 20.0;
      break;
    default:
      // by default it 'bodyLarge'
      style = Theme.of(context).textTheme.bodyLarge!.copyWith(
          // fontWeight: FontWeight.w600,
          // color: color,
          );
      iconSize = 20.0;
  }
  //////////////////////
  switch (type) {
    case 'Date Time':
      myIcon = FontAwesomeIcons.calendarDay;
      break;
    case 'Transport':
      myIcon = FontAwesomeIcons.truck;
      iconSize = iconSize * 0.8;
      break;
    default:
      // by default it 'Ticket Number'
      myIcon = FontAwesomeIcons.ticket;
  }

  ///////////////////////////
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Visibility(
        visible: label == '' ? false : true,
        child: Text(label),
      ),
      RichText(
        text: TextSpan(
          children: [
            WidgetSpan(
              child: FaIcon(
                myIcon,
                size: iconSize,
                color: color,
              ),
            ),
            TextSpan(
              text: ' $mainText',
              style: style,
            ),
          ],
        ),
      ),
    ],
  );
}
