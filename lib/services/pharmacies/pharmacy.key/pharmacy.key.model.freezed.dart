// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pharmacy.key.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PharmacyKey _$PharmacyKeyFromJson(Map<String, dynamic> json) {
  return _PharmacyKey.fromJson(json);
}

/// @nodoc
mixin _$PharmacyKey {
  String get name => throw _privateConstructorUsedError;
  String get pharmacyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyKeyCopyWith<PharmacyKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyKeyCopyWith<$Res> {
  factory $PharmacyKeyCopyWith(
          PharmacyKey value, $Res Function(PharmacyKey) then) =
      _$PharmacyKeyCopyWithImpl<$Res>;
  $Res call({String name, String pharmacyId});
}

/// @nodoc
class _$PharmacyKeyCopyWithImpl<$Res> implements $PharmacyKeyCopyWith<$Res> {
  _$PharmacyKeyCopyWithImpl(this._value, this._then);

  final PharmacyKey _value;
  // ignore: unused_field
  final $Res Function(PharmacyKey) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? pharmacyId = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pharmacyId: pharmacyId == freezed
          ? _value.pharmacyId
          : pharmacyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PharmacyKeyCopyWith<$Res>
    implements $PharmacyKeyCopyWith<$Res> {
  factory _$$_PharmacyKeyCopyWith(
          _$_PharmacyKey value, $Res Function(_$_PharmacyKey) then) =
      __$$_PharmacyKeyCopyWithImpl<$Res>;
  @override
  $Res call({String name, String pharmacyId});
}

/// @nodoc
class __$$_PharmacyKeyCopyWithImpl<$Res> extends _$PharmacyKeyCopyWithImpl<$Res>
    implements _$$_PharmacyKeyCopyWith<$Res> {
  __$$_PharmacyKeyCopyWithImpl(
      _$_PharmacyKey _value, $Res Function(_$_PharmacyKey) _then)
      : super(_value, (v) => _then(v as _$_PharmacyKey));

  @override
  _$_PharmacyKey get _value => super._value as _$_PharmacyKey;

  @override
  $Res call({
    Object? name = freezed,
    Object? pharmacyId = freezed,
  }) {
    return _then(_$_PharmacyKey(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pharmacyId: pharmacyId == freezed
          ? _value.pharmacyId
          : pharmacyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PharmacyKey implements _PharmacyKey {
  const _$_PharmacyKey({this.name = '', this.pharmacyId = ''});

  factory _$_PharmacyKey.fromJson(Map<String, dynamic> json) =>
      _$$_PharmacyKeyFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String pharmacyId;

  @override
  String toString() {
    return 'PharmacyKey(name: $name, pharmacyId: $pharmacyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PharmacyKey &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.pharmacyId, pharmacyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(pharmacyId));

  @JsonKey(ignore: true)
  @override
  _$$_PharmacyKeyCopyWith<_$_PharmacyKey> get copyWith =>
      __$$_PharmacyKeyCopyWithImpl<_$_PharmacyKey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PharmacyKeyToJson(
      this,
    );
  }
}

abstract class _PharmacyKey implements PharmacyKey {
  const factory _PharmacyKey({final String name, final String pharmacyId}) =
      _$_PharmacyKey;

  factory _PharmacyKey.fromJson(Map<String, dynamic> json) =
      _$_PharmacyKey.fromJson;

  @override
  String get name;
  @override
  String get pharmacyId;
  @override
  @JsonKey(ignore: true)
  _$$_PharmacyKeyCopyWith<_$_PharmacyKey> get copyWith =>
      throw _privateConstructorUsedError;
}
