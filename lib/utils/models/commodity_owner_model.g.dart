// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commodity_owner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommodityOwner _$CommodityOwnerFromJson(Map<String, dynamic> json) =>
    CommodityOwner(
      id: json['id'] as String,
      firmName: json['firmName'] as String,
      nickName: json['nickName'] as String? ?? 'N/A',
      proprietorName: json['proprietorName'] as String,
      commodityTicketsIds: (json['commodityTicketsIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const ['none'],
    );

Map<String, dynamic> _$CommodityOwnerToJson(CommodityOwner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firmName': instance.firmName,
      'nickName': instance.nickName,
      'proprietorName': instance.proprietorName,
      'commodityTicketsIds': instance.commodityTicketsIds,
    };
