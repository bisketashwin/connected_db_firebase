import 'package:json_annotation/json_annotation.dart';
import 'dart:collection';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';
// import 'package:uuid/uuid.dart';

part 'commodity_owner_model.g.dart';

////////This is the entity that owns the commodity

@JsonSerializable(explicitToJson: true)
class CommodityOwner {
  String id;
  String firmName;
  String nickName;
  String proprietorName;
  List<String> commodityTicketsIds;

  CommodityOwner({
    required this.id,
    required this.firmName,
    this.nickName = 'N/A',
    required this.proprietorName,
    this.commodityTicketsIds = const ['none'],
  });

  factory CommodityOwner.fromJson(Map<String, dynamic> json) =>
      _$CommodityOwnerFromJson(json);

  Map<String, dynamic> toJson() => _$CommodityOwnerToJson(this);
}

class CommodityOwnerController extends ChangeNotifier {
  final List<CommodityOwner> _commodityOwners = [];

  UnmodifiableListView<CommodityOwner> get commodityOwners =>
      UnmodifiableListView(_commodityOwners);

  // Add a function to serialize a CommodityTicket object to JSON.
  String serializeCommodityOwnerToJson(CommodityOwner commodityOwner) {
    return jsonEncode(commodityOwner.toJson());
  }

  // Add a function to deserialize a JSON string to a CommodityTicket object.
  CommodityOwner deserializeCommodityOwnerFromJson(String json) {
    return _$CommodityOwnerFromJson(jsonDecode(json));
  }

  void addCommodityOwner(CommodityOwner commodityOwner) {
    // Create a 3-letter capitalized abbreviation of the commodity owner.
    String abbreviation = commodityOwner.firmName.substring(0, 3).toUpperCase();

    commodityOwner.nickName = abbreviation;

    // Add the new commodity owner object to the list.
    _commodityOwners.add(commodityOwner);

    // Notify listeners that the list of commodity owners has changed.
    notifyListeners();
  }

  void editCommodityOwner(int index, CommodityOwner commodityOwner) {
    // Get the commodity owner object at the specified index.
    CommodityOwner commodityOwner = _commodityOwners[index];

    String abbreviation = commodityOwner.firmName.substring(0, 3).toUpperCase();

    // Update the commodity owner's firmName.
    commodityOwner.firmName = commodityOwner.firmName;
    commodityOwner.nickName = abbreviation;

    // Notify listeners that the list of commodity owners has changed.
    notifyListeners();
  }

  void removeCommodityOwner(int index) {
    // Remove the commodity owner object at the specified index.
    _commodityOwners.removeAt(index);

    // Notify listeners that the list of commodity owners has changed.
    notifyListeners();
  }
}
