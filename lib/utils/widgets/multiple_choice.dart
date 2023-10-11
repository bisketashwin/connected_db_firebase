import 'package:flutter/material.dart';

import '../constants/constants_1.dart';

class MultipleChoice extends StatefulWidget {
  const MultipleChoice({super.key});

  @override
  State<MultipleChoice> createState() => _MultipleChoiceState();
}

class _MultipleChoiceState extends State<MultipleChoice> {
  Set<Sizes> selection = <Sizes>{Sizes.large, Sizes.extraLarge};

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Sizes>(
      segments: <ButtonSegment<Sizes>>[
        ButtonSegment<Sizes>(
            value: Sizes.extraSmall,
            label: Text('XS', style: Theme.of(context).textTheme.bodySmall)),
        ButtonSegment<Sizes>(
            value: Sizes.small,
            label: Text('S', style: Theme.of(context).textTheme.bodySmall)),
        ButtonSegment<Sizes>(
            value: Sizes.medium,
            label: Text('M', style: Theme.of(context).textTheme.bodySmall)),
        ButtonSegment<Sizes>(
            value: Sizes.large,
            label: Text('L', style: Theme.of(context).textTheme.bodySmall)),
        ButtonSegment<Sizes>(
            value: Sizes.extraLarge,
            label: Text('XL', style: Theme.of(context).textTheme.bodySmall)),
      ],
      selected: selection,
      onSelectionChanged: (Set<Sizes> newSelection) {
        setState(() {
          selection = newSelection;
        });
      },
      multiSelectionEnabled: true,
    );
  }
}
