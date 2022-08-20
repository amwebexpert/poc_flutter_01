// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy.info.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PharmacyInfo _$$_PharmacyInfoFromJson(Map<String, dynamic> json) =>
    _$_PharmacyInfo(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      pharmacyHours: json['pharmacyHours'] as String? ?? '',
      primaryPhoneNumber: json['primaryPhoneNumber'] as String? ?? '',
      address: json['address'] == null
          ? const PharmacyAddress()
          : PharmacyAddress.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PharmacyInfoToJson(_$_PharmacyInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pharmacyHours': instance.pharmacyHours,
      'primaryPhoneNumber': instance.primaryPhoneNumber,
      'address': instance.address,
    };
