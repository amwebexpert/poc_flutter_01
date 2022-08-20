// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy.address.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PharmacyAddress _$$_PharmacyAddressFromJson(Map<String, dynamic> json) =>
    _$_PharmacyAddress(
      streetAddress1: json['streetAddress1'] as String? ?? '',
      city: json['city'] as String? ?? '',
      postalCode: json['postalCode'] as String? ?? '',
      usTerritory: json['usTerritory'] as String? ?? '',
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_PharmacyAddressToJson(_$_PharmacyAddress instance) =>
    <String, dynamic>{
      'streetAddress1': instance.streetAddress1,
      'city': instance.city,
      'postalCode': instance.postalCode,
      'usTerritory': instance.usTerritory,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
