// goods_vehicle_model.dart
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';
import 'dart:convert';

part 'goods_vehicle_model.g.dart';

@JsonSerializable(explicitToJson: true)
class GoodsVehicle {
  String id; // - for connecting the DB tables - used in commodity lot
  List<String>? timeTableEntryId; // as driver needs to access and input data
  //access to pick up and destination address
  String registrationNumber; // complete vehicle registration number
  String unloadedWeight; // to caluculate wight of good in wight bridge
  String vehicleModel;
  String vehicleSize;
  String covered; // for owner to decide if this is right type of vehicle
  String loadCarryingCapacity; // for owner to decide how much to load
  String driverName; // for contact by company or customer
  String driverContactNumber; // for contact by company or customer

  GoodsVehicle({
    this.id = '00000',
    this.registrationNumber = 'not assigned',
    this.unloadedWeight = 'not assigned',
    this.vehicleModel = 'not assigned',
    this.vehicleSize = 'not assigned',
    this.covered = 'not assigned',
    this.loadCarryingCapacity = 'not assigned',
    this.driverName = 'not assigned',
    this.driverContactNumber = 'not assigned',
  });

  factory GoodsVehicle.fromJson(Map<String, dynamic> json) =>
      _$GoodsVehicleFromJson(json);

  Map<String, dynamic> toJson() => _$GoodsVehicleToJson(this);
}

class GoodsVehicleController extends ChangeNotifier {
  final List<GoodsVehicle> _goodsVehicles = [];
  final Uuid _uuid = const Uuid();

  List<GoodsVehicle> get goodsVehicles => _goodsVehicles;

  // Add a function to generate a unique ID for a new commodity ticket.
  String generateUniqueId() {
    return _uuid.v4();
  }

  // Add a function to serialize a GoodsVehicle object to JSON.
  String serializeGoodsVehicleToJson(GoodsVehicle goodsVehicle) {
    return jsonEncode(goodsVehicle.toJson());
  }

  // Add a function to deserialize a JSON string to a GoodsVehicle object.
  GoodsVehicle deserializeGoodsVehicleFromJson(String json) {
    return _$GoodsVehicleFromJson(jsonDecode(json));
  }

  // Add a function to create a new commodity ticket.
  void addGoodsVehicle(GoodsVehicle goodsVehicle) {
    _goodsVehicles.add(goodsVehicle);
    notifyListeners();
  }

  // Add a function to edit a commodity ticket.
  void editGoodsVehicle(GoodsVehicle goodsVehicle) {
    _goodsVehicles[_goodsVehicles.indexOf(goodsVehicle)] = goodsVehicle;
    notifyListeners();
  }

  // Add a function to delete a commodity ticket.
  void deleteGoodsVehicle(GoodsVehicle goodsVehicle) {
    _goodsVehicles.remove(goodsVehicle);
    notifyListeners();
  }
}
