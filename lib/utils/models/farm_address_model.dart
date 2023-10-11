// farm_address_model.dart

import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';

part 'farm_address_model.g.dart';

@JsonSerializable(explicitToJson: true)
class FarmAddress {
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
  // reverse reference commodity tickets belonging to this farmAddress

  FarmAddress({
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

  factory FarmAddress.fromJson(Map<String, dynamic> json) =>
      _$FarmAddressFromJson(json);

  Map<String, dynamic> toJson() => _$FarmAddressToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FarmAddressController extends ChangeNotifier {
  final List<FarmAddress> _farmAddresses = [];

  List<FarmAddress> get farmAddresses => _farmAddresses;

  // Add a function to generate a nickname from the company name.
  String generateNickname(FarmAddress farmAddress) {
    String firmName = farmAddress.firmName;
    return firmName.substring(0, 3).toUpperCase();
  }

  // Add a function to serialize an FarmAddress object to JSON.
  String serializeFarmAddressToJson(FarmAddress farmAddress) {
    return jsonEncode(farmAddress.toJson());
  }

  // Add a function to deserialize a JSON string to an FarmAddress object.
  FarmAddress deserializeFarmAddressFromJson(String json) {
    return _$FarmAddressFromJson(jsonDecode(json));
  }

  void addFarmAddress(FarmAddress farmAddress) {
    // Generate a nickname from the company name.
    farmAddress.nickName = generateNickname(farmAddress);
    _farmAddresses.add(farmAddress);
    notifyListeners();
  }

  void modifyFarmAddress(
      FarmAddress oldFarmAddress, FarmAddress newFarmAddress) {
    _farmAddresses[_farmAddresses.indexOf(oldFarmAddress)] = newFarmAddress;
    notifyListeners();
  }

  void deleteFarmAddress(FarmAddress farmAddress) {
    _farmAddresses.remove(farmAddress);
    notifyListeners();
  }
}
