import 'package:freezed_annotation/freezed_annotation.dart';

import 'pharmacy.address.model.dart';

part 'pharmacy.info.model.freezed.dart';
part 'pharmacy.info.model.g.dart';

@Freezed()
class PharmacyInfo with _$PharmacyInfo {
  const factory PharmacyInfo({
    @Default('') String id,
    @Default('') String name,
    @Default('') String pharmacyHours,
    @Default('') String primaryPhoneNumber,
    @Default(PharmacyAddress()) PharmacyAddress address,
  }) = _PharmacyInfo;

  factory PharmacyInfo.fromJson(Map<String, dynamic> json) => _$PharmacyInfoFromJson(json);
}
