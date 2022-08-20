// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pharmacy _$$_PharmacyFromJson(Map<String, dynamic> json) => _$_Pharmacy(
      details: json['details'] as String? ?? '',
      href: json['href'] as String? ?? '',
      value: json['value'] == null
          ? const PharmacyInfo()
          : PharmacyInfo.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PharmacyToJson(_$_Pharmacy instance) =>
    <String, dynamic>{
      'details': instance.details,
      'href': instance.href,
      'value': instance.value,
    };
