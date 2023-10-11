import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommodityCard2 extends StatelessWidget {
  // final IconData icon;

  final String header;
  final String bodyText;
  // final double width;
  final String inOut;
  const CommodityCard2({
    super.key,
    // required this.icon,
    required this.inOut,
    required this.header,
    required this.bodyText,
    // required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Column(
              children: [
                SvgPicture.asset(
                  () {
                    if (inOut == "in") {
                      return 'lib/assets/icons_designed/commodity_inward.svg';
                    } else if (inOut == "out") {
                      return 'lib/assets/icons_designed/commodity_outward.svg';
                    } else {
                      // Add more conditions and return statements as needed.
                      // You can also have a default case if none of the conditions match.
                      //return 'lib/assets/icons_designed/default.svg';
                      return 'lib/assets/icons_designed/commodity_outward.svg';
                    }
                  }(),
                  width: 50,
                  height: 50,
                ),
                // Icon(icon, size: 40.0),
              ],
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(header, style: Theme.of(context).textTheme.titleSmall),
                    Text(
                      bodyText,
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 1, // Allow unlimited lines
                      // textAlign: TextAlign.justify,
                      overflow: TextOverflow.clip,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
