import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacy.key.model.freezed.dart';
part 'pharmacy.key.model.g.dart';

@Freezed()
class PharmacyKey with _$PharmacyKey {
  const factory PharmacyKey({@Default('') String name, @Default('') String pharmacyId}) = _PharmacyKey;

  factory PharmacyKey.fromJson(Map<String, dynamic> json) => _$PharmacyKeyFromJson(json);
}
