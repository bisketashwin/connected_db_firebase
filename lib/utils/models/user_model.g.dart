// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      phoneNumbers: (json['phoneNumbers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      commodityTicketIds: (json['commodityTicketIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'name': instance.name,
      'phoneNumbers': instance.phoneNumbers,
      'commodityTicketIds': instance.commodityTicketIds,
    };
