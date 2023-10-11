import 'package:flutter/material.dart';

class CommodityCard1 extends StatelessWidget {
  final IconData icon;
  final String header;
  final String bodyText;
  final double width;

  const CommodityCard1({
    super.key,
    required this.icon,
    required this.header,
    required this.bodyText,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        color: Theme.of(context).colorScheme.primaryContainer,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon
              Row(
                children: [
                  Icon(icon, size: 30.0),
                  const SizedBox(width: 10.0),
                  // Header
                  Text(header, style: Theme.of(context).textTheme.titleSmall),
                ],
              ),
              const SizedBox(height: 10.0),
              // Body text
              Text(bodyText, style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ),
      ),
    );
  }
}
