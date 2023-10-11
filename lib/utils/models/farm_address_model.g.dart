// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farm_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FarmAddress _$FarmAddressFromJson(Map<String, dynamic> json) => FarmAddress(
      id: json['id'] as String,
      firmName: json['firmName'] as String,
      nickName: json['nickName'] as String? ?? 'N/A',
      street: json['street'] as String,
      villageOrTaluk: json['villageOrTaluk'] as String,
      zilla: json['zilla'] as String,
      state: json['state'] as String,
      pincode: json['pincode'] as String,
      googleMapLocation: json['googleMapLocation'] as String? ?? 'N/A',
      commodityTicketsIds: (json['commodityTicketsIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const ['none'],
    );

Map<String, dynamic> _$FarmAddressToJson(FarmAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firmName': instance.firmName,
      'nickName': instance.nickName,
      'street': instance.street,
      'villageOrTaluk': instance.villageOrTaluk,
      'zilla': instance.zilla,
      'state': instance.state,
      'googleMapLocation': instance.googleMapLocation,
      'pincode': instance.pincode,
      'commodityTicketsIds': instance.commodityTicketsIds,
    };

FarmAddressController _$FarmAddressControllerFromJson(
        Map<String, dynamic> json) =>
    FarmAddressController();

Map<String, dynamic> _$FarmAddressControllerToJson(
        FarmAddressController instance) =>
    <String, dynamic>{};
