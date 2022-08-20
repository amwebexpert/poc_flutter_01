// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pharmacy.address.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PharmacyAddress _$PharmacyAddressFromJson(Map<String, dynamic> json) {
  return _PharmacyAddress.fromJson(json);
}

/// @nodoc
mixin _$PharmacyAddress {
  String get city => throw _privateConstructorUsedError;
  String get postalCode => throw _privateConstructorUsedError;
  String get streetAddress1 => throw _privateConstructorUsedError;
  String get usTerritory => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyAddressCopyWith<PharmacyAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyAddressCopyWith<$Res> {
  factory $PharmacyAddressCopyWith(
          PharmacyAddress value, $Res Function(PharmacyAddress) then) =
      _$PharmacyAddressCopyWithImpl<$Res>;
  $Res call(
      {String city,
      String postalCode,
      String streetAddress1,
      String usTerritory,
      double latitude,
      double longitude});
}

/// @nodoc
class _$PharmacyAddressCopyWithImpl<$Res>
    implements $PharmacyAddressCopyWith<$Res> {
  _$PharmacyAddressCopyWithImpl(this._value, this._then);

  final PharmacyAddress _value;
  // ignore: unused_field
  final $Res Function(PharmacyAddress) _then;

  @override
  $Res call({
    Object? city = freezed,
    Object? postalCode = freezed,
    Object? streetAddress1 = freezed,
    Object? usTerritory = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      streetAddress1: streetAddress1 == freezed
          ? _value.streetAddress1
          : streetAddress1 // ignore: cast_nullable_to_non_nullable
              as String,
      usTerritory: usTerritory == freezed
          ? _value.usTerritory
          : usTerritory // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_PharmacyAddressCopyWith<$Res>
    implements $PharmacyAddressCopyWith<$Res> {
  factory _$$_PharmacyAddressCopyWith(
          _$_PharmacyAddress value, $Res Function(_$_PharmacyAddress) then) =
      __$$_PharmacyAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {String city,
      String postalCode,
      String streetAddress1,
      String usTerritory,
      double latitude,
      double longitude});
}

/// @nodoc
class __$$_PharmacyAddressCopyWithImpl<$Res>
    extends _$PharmacyAddressCopyWithImpl<$Res>
    implements _$$_PharmacyAddressCopyWith<$Res> {
  __$$_PharmacyAddressCopyWithImpl(
      _$_PharmacyAddress _value, $Res Function(_$_PharmacyAddress) _then)
      : super(_value, (v) => _then(v as _$_PharmacyAddress));

  @override
  _$_PharmacyAddress get _value => super._value as _$_PharmacyAddress;

  @override
  $Res call({
    Object? city = freezed,
    Object? postalCode = freezed,
    Object? streetAddress1 = freezed,
    Object? usTerritory = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_PharmacyAddress(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      streetAddress1: streetAddress1 == freezed
          ? _value.streetAddress1
          : streetAddress1 // ignore: cast_nullable_to_non_nullable
              as String,
      usTerritory: usTerritory == freezed
          ? _value.usTerritory
          : usTerritory // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PharmacyAddress implements _PharmacyAddress {
  const _$_PharmacyAddress(
      {this.city = '',
      this.postalCode = '',
      this.streetAddress1 = '',
      this.usTerritory = '',
      this.latitude = 0,
      this.longitude = 0});

  factory _$_PharmacyAddress.fromJson(Map<String, dynamic> json) =>
      _$$_PharmacyAddressFromJson(json);

  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String postalCode;
  @override
  @JsonKey()
  final String streetAddress1;
  @override
  @JsonKey()
  final String usTerritory;
  @override
  @JsonKey()
  final double latitude;
  @override
  @JsonKey()
  final double longitude;

  @override
  String toString() {
    return 'PharmacyAddress(city: $city, postalCode: $postalCode, streetAddress1: $streetAddress1, usTerritory: $usTerritory, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PharmacyAddress &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.postalCode, postalCode) &&
            const DeepCollectionEquality()
                .equals(other.streetAddress1, streetAddress1) &&
            const DeepCollectionEquality()
                .equals(other.usTerritory, usTerritory) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(postalCode),
      const DeepCollectionEquality().hash(streetAddress1),
      const DeepCollectionEquality().hash(usTerritory),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude));

  @JsonKey(ignore: true)
  @override
  _$$_PharmacyAddressCopyWith<_$_PharmacyAddress> get copyWith =>
      __$$_PharmacyAddressCopyWithImpl<_$_PharmacyAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PharmacyAddressToJson(
      this,
    );
  }
}

abstract class _PharmacyAddress implements PharmacyAddress {
  const factory _PharmacyAddress(
      {final String city,
      final String postalCode,
      final String streetAddress1,
      final String usTerritory,
      final double latitude,
      final double longitude}) = _$_PharmacyAddress;

  factory _PharmacyAddress.fromJson(Map<String, dynamic> json) =
      _$_PharmacyAddress.fromJson;

  @override
  String get city;
  @override
  String get postalCode;
  @override
  String get streetAddress1;
  @override
  String get usTerritory;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_PharmacyAddressCopyWith<_$_PharmacyAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
