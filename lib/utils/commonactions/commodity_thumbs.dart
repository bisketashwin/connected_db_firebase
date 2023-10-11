import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

Widget getGcommodityThumb({required String name, size = 50.0}) {
  // var keywords = ["default", "grape", "cotton", "rice", "wheat"];
  Iterable<String> keywords = listOfCommodityThumbs().keys;

  String keyword = findKeyword(name, keywords);

  String? imagePath = listOfCommodityThumbs()[keyword];

  return ClipRRect(
    borderRadius: BorderRadius.circular(50),
    child: Image.asset(
      imagePath!,
      width: size,
    ),
  );
}

String findKeyword(String string, Iterable<String> keywords) {
  string = string.toLowerCase();
  for (final keyword in keywords) {
    if (string.toLowerCase().contains(keyword.toLowerCase())) {
      return keyword;
    }
  }
  return 'default';
}
