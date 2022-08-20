import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poc_flutter_01/services/pharmacies/pharmacy/pharmacy.info.model.dart';

part 'pharmacy.model.freezed.dart';
part 'pharmacy.model.g.dart';

@Freezed()
class Pharmacy with _$Pharmacy {
  const factory Pharmacy({
    @Default('') String details,
    @Default('') String href,
    @Default(PharmacyInfo()) PharmacyInfo value,
  }) = _Pharmacy;

  factory Pharmacy.fromJson(Map<String, dynamic> json) => _$PharmacyFromJson(json);
}
