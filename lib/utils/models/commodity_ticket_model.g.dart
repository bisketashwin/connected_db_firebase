// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commodity_ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommodityTicket _$CommodityTicketFromJson(Map<String, dynamic> json) =>
    CommodityTicket(
      id: json['id'] as String,
      commodityOwnerId: json['commodityOwnerId'] as String? ?? 'Not Generated',
      pickUpAddressId: json['pickUpAddressId'] as String? ?? 'Not Generated',
      destinationAddressId:
          json['destinationAddressId'] as String? ?? 'Not Generated',
      contactPersonId: json['contactPersonId'] as String? ?? 'Not Generated',
      lotIds: (json['lotIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const ['not available'],
      ticketNumber: json['ticketNumber'] as String? ?? 'Not Generated',
      goodMovement: json['goodMovement'] as String,
      commodity: json['commodity'] as String,
      quantity: json['quantity'] as String,
      transportType: json['transportType'] as String? ?? 'Company',
      status: json['status'] as String? ?? 'Yet to Start',
      message: json['message'] as String? ?? '',
      pickupDate: DateTime.parse(json['pickupDate'] as String),
    );

Map<String, dynamic> _$CommodityTicketToJson(CommodityTicket instance) =>
    <String, dynamic>{
      'id': instance.id,
      'commodityOwnerId': instance.commodityOwnerId,
      'contactPersonId': instance.contactPersonId,
      'pickUpAddressId': instance.pickUpAddressId,
      'destinationAddressId': instance.destinationAddressId,
      'lotIds': instance.lotIds,
      'ticketNumber': instance.ticketNumber,
      'goodMovement': instance.goodMovement,
      'commodity': instance.commodity,
      'quantity': instance.quantity,
      'transportType': instance.transportType,
      'status': instance.status,
      'message': instance.message,
      'pickupDate': instance.pickupDate.toIso8601String(),
    };
