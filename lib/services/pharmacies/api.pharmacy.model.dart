import 'package:freezed_annotation/freezed_annotation.dart';

part 'api.pharmacy.model.freezed.dart';
part 'api.pharmacy.model.g.dart';

@Freezed()
class ApiPharmacy with _$ApiPharmacy {
  const factory ApiPharmacy({@Default('') String name, @Default('') String pharmacyId}) = _ApiPharmacy;

  factory ApiPharmacy.fromJson(Map<String, dynamic> json) => _$ApiPharmacyFromJson(json);
}
