import 'package:flutter/material.dart';

//Alerts sub segregated as QC done
//TODO: other there could be more specific call to action in alert that need to be worked on

getButtons(String ticketStatus, context) {
  switch (ticketStatus) {
    case 'Attention':
      return actionChips1(context);
    case 'Attention QC Done':
      return actionChips2(context);
    case 'complete':
      return actionChips3(context);
    default:
      return Text('data');
  }
}

getBigButtons(String ticketStatus, context) {
  switch (ticketStatus) {
    case 'Attention':
      return actionChipsBig1(context);
    case 'Attention QC Done':
      return actionChipsBig2(context);
    case 'complete':
      return actionChipsBig3(context);
    default:
      return Text('data');
  }
}

Widget actionChips1(context) {
  // var color1 = CommodityTicketStatus.outward.color;
  var color2 = Theme.of(context).colorScheme.onPrimaryContainer.withAlpha(255);
  var color1 = Theme.of(context).colorScheme.secondary;
  var textStyle1 = Theme.of(context)
      .textTheme
      .bodySmall!
      .copyWith(color: color2, fontWeight: FontWeight.w900);

  return SizedBox(
    child: Row(
      children: [
        TextButton(
          onPressed: () {
            // Perform some action
          },
          child: Text(
            'CALL MANAGER',
            style: textStyle1,
          ),
        ),
        TextButton(
          onPressed: () {
            // Perform some action
          },
          child: Text(
            'OTHER ACTIONS',
            style: textStyle1,
          ),
        ),
      ],
    ),
  );
}

Widget actionChips2(context) {
  // var color1 = CommodityTicketStatus.outward.color;
  var color2 = Theme.of(context).colorScheme.onPrimaryContainer.withAlpha(255);
  var color1 = Theme.of(context).colorScheme.secondary;
  var textStyle1 = Theme.of(context)
      .textTheme
      .bodySmall!
      .copyWith(color: color2, fontWeight: FontWeight.w900);

  return SizedBox(
    child: Row(
      children: [
        TextButton(
          onPressed: () {
            // Perform some action
          },
          child: Text(
            'VIEW CERTIFICATE',
            style: textStyle1,
          ),
        ),
        TextButton(
          onPressed: () {
            // Perform some action
          },
          child: Text(
            'ACCEPT & STOCK',
            style: textStyle1,
          ),
        ),
      ],
    ),
  );
}

Widget actionChips3(context) {
  // var color1 = CommodityTicketStatus.outward.color;
  var color2 = Theme.of(context).colorScheme.onPrimaryContainer.withAlpha(255);
  var color1 = Theme.of(context).colorScheme.secondary;
  var textStyle1 = Theme.of(context)
      .textTheme
      .bodySmall!
      .copyWith(color: color2, fontWeight: FontWeight.w900);

  return SizedBox(
    child: Row(
      children: [
        TextButton(
          onPressed: () {
            // Perform some action
          },
          child: Text(
            'VIEW CERTIFICATE',
            style: textStyle1,
          ),
        ),
        TextButton(
          onPressed: () {
            // Perform some action
          },
          child: Text(
            'GET LOAN',
            style: textStyle1,
          ),
        ),
        TextButton(
          onPressed: () {
            // Perform some action
          },
          child: Text(
            'TRADE',
            style: textStyle1,
          ),
        ),
      ],
    ),
  );
}

Widget actionChipsBig1(context) {
  // var color1 = CommodityTicketStatus.outward.color;
  var color2 = Theme.of(context).colorScheme.onPrimaryContainer.withAlpha(255);
  var shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
  );
  var textStyle1 = Theme.of(context)
      .textTheme
      .titleSmall!
      .copyWith(color: color2, fontWeight: FontWeight.w800);

  return SizedBox(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ActionChip(
          shape: shape,
          onPressed: () {
            // Perform some action
          },
          label: Text(
            'CALL MANAGER',
            style: textStyle1,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        ActionChip(
          shape: shape,
          onPressed: () {
            // Perform some action
          },
          label: Text(
            'OTHER ACTIONS',
            style: textStyle1,
          ),
        ),
      ],
    ),
  );
}

Widget actionChipsBig2(context) {
  // var color1 = CommodityTicketStatus.outward.color;
  var color2 = Theme.of(context).colorScheme.onPrimaryContainer.withAlpha(255);
  var shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
  );
  var textStyle1 = Theme.of(context)
      .textTheme
      .titleSmall!
      .copyWith(color: color2, fontWeight: FontWeight.w800);

  return SizedBox(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ActionChip(
          shape: shape,
          onPressed: () {
            // Perform some action
          },
          label: Text(
            'VIEW CERTIFICATE',
            style: textStyle1,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        ActionChip(
          shape: shape,
          onPressed: () {
            // Perform some action
          },
          label: Text(
            'ACCEPT & STOCK',
            style: textStyle1,
          ),
        ),
      ],
    ),
  );
}

Widget actionChipsBig3(context) {
  // var color1 = CommodityTicketStatus.outward.color;
  var color2 = Theme.of(context).colorScheme.onPrimaryContainer.withAlpha(255);
  var shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
  );
  var textStyle1 = Theme.of(context)
      .textTheme
      .titleSmall!
      .copyWith(color: color2, fontWeight: FontWeight.w800);

  return SizedBox(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ActionChip(
          shape: shape,
          onPressed: () {
            // Perform some action
          },
          label: Text(
            'VIEW CERTIFICATE',
            style: textStyle1,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        ActionChip(
          shape: shape,
          onPressed: () {
            // Perform some action
          },
          label: Text(
            'GET LOAN',
            style: textStyle1,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        ActionChip(
          shape: shape,
          onPressed: () {
            // Perform some action
          },
          label: Text(
            'TRADE',
            style: textStyle1,
          ),
        ),
      ],
    ),
  );
}
