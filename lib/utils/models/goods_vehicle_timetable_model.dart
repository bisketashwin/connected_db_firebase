import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';
import 'dart:convert';

part 'goods_vehicle_timetable_model.g.dart';

@JsonSerializable(explicitToJson: true)
class GoodsVehicleTimeSlot {
  int id;
  int goodsVehicleId;
  DateTime pickUpTime;
  DateTime destinationArrivalTime;

  GoodsVehicleTimeSlot({
    required this.id,
    required this.goodsVehicleId,
    required this.pickUpTime,
    required this.destinationArrivalTime,
  });

  factory GoodsVehicleTimeSlot.fromJson(Map<String, dynamic> json) =>
      _$GoodsVehicleTimeSlotFromJson(json);

  Map<String, dynamic> toJson() => _$GoodsVehicleTimeSlotToJson(this);
}

class GoodsVehicleTimeSlotController extends ChangeNotifier {
  final List<GoodsVehicleTimeSlot> _goodsVehiclesTimeTable = [];
  final Uuid _uuid = const Uuid();

  List<GoodsVehicleTimeSlot> get goodsVehiclesTimeTable =>
      _goodsVehiclesTimeTable;

  // Add a function to generate a unique ID for a new commodity ticket.
  String generateUniqueId() {
    return _uuid.v4();
  }

  // Add a function to serialize a GoodsVehicleTimeSlot object to JSON.
  String serializeGoodsVehicleTimeTableToJson(
      GoodsVehicleTimeSlot goodsVehicleTimeTable) {
    return jsonEncode(goodsVehicleTimeTable.toJson());
  }

  // Add a function to deserialize a JSON string to a GoodsVehicleTimeSlot object.
  GoodsVehicleTimeSlot deserializeGoodsVehicleTimeTableFromJson(String json) {
    return _$GoodsVehicleTimeSlotFromJson(jsonDecode(json));
  }

  // Add a function to create a new commodity ticket.
  void addGoodsVehicleTimeSlot(GoodsVehicleTimeSlot goodsVehicleTimeSlot) {
    _goodsVehiclesTimeTable.add(goodsVehicleTimeSlot);
    notifyListeners();
  }

  // Add a function to edit a commodity ticket.
  void editGoodsVehicleTimeSlot(GoodsVehicleTimeSlot goodsVehicleTimeSlot) {
    _goodsVehiclesTimeTable[_goodsVehiclesTimeTable
        .indexOf(goodsVehicleTimeSlot)] = goodsVehicleTimeSlot;
    notifyListeners();
  }

  // Add a function to delete a commodity ticket.
  void deleteGoodsVehicleTimeSlot(GoodsVehicleTimeSlot goodsVehicleTimeSlot) {
    _goodsVehiclesTimeTable.remove(goodsVehicleTimeSlot);
    notifyListeners();
  }
}
