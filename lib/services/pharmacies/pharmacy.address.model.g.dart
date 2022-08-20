// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy.address.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PharmacyAddress _$$_PharmacyAddressFromJson(Map<String, dynamic> json) =>
    _$_PharmacyAddress(
      city: json['city'] as String? ?? '',
      postalCode: json['postalCode'] as String? ?? '',
      streetAddress1: json['streetAddress1'] as String? ?? '',
      usTerritory: json['usTerritory'] as String? ?? '',
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_PharmacyAddressToJson(_$_PharmacyAddress instance) =>
    <String, dynamic>{
      'city': instance.city,
      'postalCode': instance.postalCode,
      'streetAddress1': instance.streetAddress1,
      'usTerritory': instance.usTerritory,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
