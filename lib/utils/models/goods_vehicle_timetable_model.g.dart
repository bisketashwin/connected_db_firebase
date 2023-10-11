// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goods_vehicle_timetable_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoodsVehicleTimeSlot _$GoodsVehicleTimeSlotFromJson(
        Map<String, dynamic> json) =>
    GoodsVehicleTimeSlot(
      id: json['id'] as int,
      goodsVehicleId: json['goodsVehicleId'] as int,
      pickUpTime: DateTime.parse(json['pickUpTime'] as String),
      destinationArrivalTime:
          DateTime.parse(json['destinationArrivalTime'] as String),
    );

Map<String, dynamic> _$GoodsVehicleTimeSlotToJson(
        GoodsVehicleTimeSlot instance) =>
    <String, dynamic>{
      'id': instance.id,
      'goodsVehicleId': instance.goodsVehicleId,
      'pickUpTime': instance.pickUpTime.toIso8601String(),
      'destinationArrivalTime':
          instance.destinationArrivalTime.toIso8601String(),
    };
