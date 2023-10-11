// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commodity_lot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommodityLot _$CommodityLotFromJson(Map<String, dynamic> json) => CommodityLot(
      id: json['id'] as String? ?? '00000',
      commodityTicketId: json['commodityTicketId'] as String? ?? '00000',
      goodsVehicleId: json['goodsVehicleId'] as String? ?? 'not assigned',
      lotNumber: json['lotNumber'] as String? ?? 'not assigned',
      deliveryNote: json['deliveryNote'] as String? ?? 'not available',
      listOfMediaPaths: (json['listOfMediaPaths'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      approvedById: json['approvedById'] as String? ?? '00000',
      approximateWeight:
          json['approximateWeight'] as String? ?? 'not available',
      weighbridge: json['weighbridge'] as String? ?? 'not available',
      inwardsReceipt: json['inwardsReceipt'] as String? ?? 'not available',
      unloaded: json['unloaded'] as String? ?? 'not available',
      processing: json['processing'] as String? ?? 'not available',
      qualityCheckPassed:
          json['qualityCheckPassed'] as String? ?? 'not available',
      qcCertificate: json['qcCertificate'] as String? ?? 'not available',
    );

Map<String, dynamic> _$CommodityLotToJson(CommodityLot instance) =>
    <String, dynamic>{
      'id': instance.id,
      'commodityTicketId': instance.commodityTicketId,
      'goodsVehicleId': instance.goodsVehicleId,
      'lotNumber': instance.lotNumber,
      'deliveryNote': instance.deliveryNote,
      'listOfMediaPaths': instance.listOfMediaPaths,
      'approvedById': instance.approvedById,
      'approximateWeight': instance.approximateWeight,
      'weighbridge': instance.weighbridge,
      'inwardsReceipt': instance.inwardsReceipt,
      'unloaded': instance.unloaded,
      'processing': instance.processing,
      'qualityCheckPassed': instance.qualityCheckPassed,
      'qcCertificate': instance.qcCertificate,
    };
