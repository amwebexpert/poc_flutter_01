import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacy.address.model.freezed.dart';
part 'pharmacy.address.model.g.dart';

@Freezed()
class PharmacyAddress with _$PharmacyAddress {
  const factory PharmacyAddress({
    @Default('') String streetAddress1,
    @Default('') String city,
    @Default('') String postalCode,
    @Default('') String usTerritory,
    @Default(0) double latitude,
    @Default(0) double longitude,
  }) = _PharmacyAddress;

  factory PharmacyAddress.fromJson(Map<String, dynamic> json) => _$PharmacyAddressFromJson(json);
}
