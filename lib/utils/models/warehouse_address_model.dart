// warehouse_address_model.dart

import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';

part 'warehouse_address_model.g.dart';

@JsonSerializable(explicitToJson: true)
class WarehouseAddress {
  String id;
  String firmName;
  String nickName;
  String street;
  String villageOrTaluk;
  String zilla;
  String state;
  String googleMapLocation;
  String pincode;
  List<String> commodityTicketsIds;
  // reverse reference commodity tickets belonging to this warehouseAddress

  WarehouseAddress({
    required this.id,
    required this.firmName,
    this.nickName = 'N/A',
    required this.street,
    required this.villageOrTaluk,
    required this.zilla,
    required this.state,
    required this.pincode,
    this.googleMapLocation = 'N/A',
    this.commodityTicketsIds = const ['none'],
  });

  factory WarehouseAddress.fromJson(Map<String, dynamic> json) =>
      _$WarehouseAddressFromJson(json);

  Map<String, dynamic> toJson() => _$WarehouseAddressToJson(this);
}

@JsonSerializable(explicitToJson: true)
class WarehouseAddressController extends ChangeNotifier {
  final List<WarehouseAddress> _warehouseAddresses = [];

  List<WarehouseAddress> get warehouseAddresses => _warehouseAddresses;

  // Add a function to generate a nickname from the company name.
  String generateNickname(WarehouseAddress warehouseAddress) {
    String firmName = warehouseAddress.firmName;
    return firmName.substring(0, 3).toUpperCase();
  }

  // Add a function to serialize an WarehouseAddress object to JSON.
  String serializeWarehouseAddressToJson(WarehouseAddress warehouseAddress) {
    return jsonEncode(warehouseAddress.toJson());
  }

  // Add a function to deserialize a JSON string to an WarehouseAddress object.
  WarehouseAddress deserializeWarehouseAddressFromJson(String json) {
    return _$WarehouseAddressFromJson(jsonDecode(json));
  }

  void addWarehouseAddress(WarehouseAddress warehouseAddress) {
    // Generate a nickname from the company name.
    warehouseAddress.nickName = generateNickname(warehouseAddress);
    _warehouseAddresses.add(warehouseAddress);
    notifyListeners();
  }

  void modifyWarehouseAddress(WarehouseAddress oldWarehouseAddress,
      WarehouseAddress newWarehouseAddress) {
    _warehouseAddresses[_warehouseAddresses.indexOf(oldWarehouseAddress)] =
        newWarehouseAddress;
    notifyListeners();
  }

  void deleteWarehouseAddress(WarehouseAddress warehouseAddress) {
    _warehouseAddresses.remove(warehouseAddress);
    notifyListeners();
  }
}
