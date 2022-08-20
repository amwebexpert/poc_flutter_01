// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pharmacy.info.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PharmacyInfo _$PharmacyInfoFromJson(Map<String, dynamic> json) {
  return _PharmacyInfo.fromJson(json);
}

/// @nodoc
mixin _$PharmacyInfo {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get pharmacyHours => throw _privateConstructorUsedError;
  String get primaryPhoneNumber => throw _privateConstructorUsedError;
  PharmacyAddress get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyInfoCopyWith<PharmacyInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyInfoCopyWith<$Res> {
  factory $PharmacyInfoCopyWith(
          PharmacyInfo value, $Res Function(PharmacyInfo) then) =
      _$PharmacyInfoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String pharmacyHours,
      String primaryPhoneNumber,
      PharmacyAddress address});

  $PharmacyAddressCopyWith<$Res> get address;
}

/// @nodoc
class _$PharmacyInfoCopyWithImpl<$Res> implements $PharmacyInfoCopyWith<$Res> {
  _$PharmacyInfoCopyWithImpl(this._value, this._then);

  final PharmacyInfo _value;
  // ignore: unused_field
  final $Res Function(PharmacyInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? pharmacyHours = freezed,
    Object? primaryPhoneNumber = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pharmacyHours: pharmacyHours == freezed
          ? _value.pharmacyHours
          : pharmacyHours // ignore: cast_nullable_to_non_nullable
              as String,
      primaryPhoneNumber: primaryPhoneNumber == freezed
          ? _value.primaryPhoneNumber
          : primaryPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as PharmacyAddress,
    ));
  }

  @override
  $PharmacyAddressCopyWith<$Res> get address {
    return $PharmacyAddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc
abstract class _$$_PharmacyInfoCopyWith<$Res>
    implements $PharmacyInfoCopyWith<$Res> {
  factory _$$_PharmacyInfoCopyWith(
          _$_PharmacyInfo value, $Res Function(_$_PharmacyInfo) then) =
      __$$_PharmacyInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String pharmacyHours,
      String primaryPhoneNumber,
      PharmacyAddress address});

  @override
  $PharmacyAddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$_PharmacyInfoCopyWithImpl<$Res>
    extends _$PharmacyInfoCopyWithImpl<$Res>
    implements _$$_PharmacyInfoCopyWith<$Res> {
  __$$_PharmacyInfoCopyWithImpl(
      _$_PharmacyInfo _value, $Res Function(_$_PharmacyInfo) _then)
      : super(_value, (v) => _then(v as _$_PharmacyInfo));

  @override
  _$_PharmacyInfo get _value => super._value as _$_PharmacyInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? pharmacyHours = freezed,
    Object? primaryPhoneNumber = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_PharmacyInfo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pharmacyHours: pharmacyHours == freezed
          ? _value.pharmacyHours
          : pharmacyHours // ignore: cast_nullable_to_non_nullable
              as String,
      primaryPhoneNumber: primaryPhoneNumber == freezed
          ? _value.primaryPhoneNumber
          : primaryPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as PharmacyAddress,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PharmacyInfo implements _PharmacyInfo {
  const _$_PharmacyInfo(
      {this.id = '',
      this.name = '',
      this.pharmacyHours = '',
      this.primaryPhoneNumber = '',
      this.address = const PharmacyAddress()});

  factory _$_PharmacyInfo.fromJson(Map<String, dynamic> json) =>
      _$$_PharmacyInfoFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String pharmacyHours;
  @override
  @JsonKey()
  final String primaryPhoneNumber;
  @override
  @JsonKey()
  final PharmacyAddress address;

  @override
  String toString() {
    return 'PharmacyInfo(id: $id, name: $name, pharmacyHours: $pharmacyHours, primaryPhoneNumber: $primaryPhoneNumber, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PharmacyInfo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.pharmacyHours, pharmacyHours) &&
            const DeepCollectionEquality()
                .equals(other.primaryPhoneNumber, primaryPhoneNumber) &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(pharmacyHours),
      const DeepCollectionEquality().hash(primaryPhoneNumber),
      const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$$_PharmacyInfoCopyWith<_$_PharmacyInfo> get copyWith =>
      __$$_PharmacyInfoCopyWithImpl<_$_PharmacyInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PharmacyInfoToJson(
      this,
    );
  }
}

abstract class _PharmacyInfo implements PharmacyInfo {
  const factory _PharmacyInfo(
      {final String id,
      final String name,
      final String pharmacyHours,
      final String primaryPhoneNumber,
      final PharmacyAddress address}) = _$_PharmacyInfo;

  factory _PharmacyInfo.fromJson(Map<String, dynamic> json) =
      _$_PharmacyInfo.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get pharmacyHours;
  @override
  String get primaryPhoneNumber;
  @override
  PharmacyAddress get address;
  @override
  @JsonKey(ignore: true)
  _$$_PharmacyInfoCopyWith<_$_PharmacyInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
