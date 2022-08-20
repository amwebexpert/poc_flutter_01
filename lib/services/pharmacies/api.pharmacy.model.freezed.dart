// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api.pharmacy.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiPharmacy _$ApiPharmacyFromJson(Map<String, dynamic> json) {
  return _ApiPharmacy.fromJson(json);
}

/// @nodoc
mixin _$ApiPharmacy {
  String get name => throw _privateConstructorUsedError;
  String get pharmacyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiPharmacyCopyWith<ApiPharmacy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiPharmacyCopyWith<$Res> {
  factory $ApiPharmacyCopyWith(
          ApiPharmacy value, $Res Function(ApiPharmacy) then) =
      _$ApiPharmacyCopyWithImpl<$Res>;
  $Res call({String name, String pharmacyId});
}

/// @nodoc
class _$ApiPharmacyCopyWithImpl<$Res> implements $ApiPharmacyCopyWith<$Res> {
  _$ApiPharmacyCopyWithImpl(this._value, this._then);

  final ApiPharmacy _value;
  // ignore: unused_field
  final $Res Function(ApiPharmacy) _then;

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
abstract class _$$_ApiPharmacyCopyWith<$Res>
    implements $ApiPharmacyCopyWith<$Res> {
  factory _$$_ApiPharmacyCopyWith(
          _$_ApiPharmacy value, $Res Function(_$_ApiPharmacy) then) =
      __$$_ApiPharmacyCopyWithImpl<$Res>;
  @override
  $Res call({String name, String pharmacyId});
}

/// @nodoc
class __$$_ApiPharmacyCopyWithImpl<$Res> extends _$ApiPharmacyCopyWithImpl<$Res>
    implements _$$_ApiPharmacyCopyWith<$Res> {
  __$$_ApiPharmacyCopyWithImpl(
      _$_ApiPharmacy _value, $Res Function(_$_ApiPharmacy) _then)
      : super(_value, (v) => _then(v as _$_ApiPharmacy));

  @override
  _$_ApiPharmacy get _value => super._value as _$_ApiPharmacy;

  @override
  $Res call({
    Object? name = freezed,
    Object? pharmacyId = freezed,
  }) {
    return _then(_$_ApiPharmacy(
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
class _$_ApiPharmacy implements _ApiPharmacy {
  const _$_ApiPharmacy({this.name = '', this.pharmacyId = ''});

  factory _$_ApiPharmacy.fromJson(Map<String, dynamic> json) =>
      _$$_ApiPharmacyFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String pharmacyId;

  @override
  String toString() {
    return 'ApiPharmacy(name: $name, pharmacyId: $pharmacyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiPharmacy &&
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
  _$$_ApiPharmacyCopyWith<_$_ApiPharmacy> get copyWith =>
      __$$_ApiPharmacyCopyWithImpl<_$_ApiPharmacy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiPharmacyToJson(
      this,
    );
  }
}

abstract class _ApiPharmacy implements ApiPharmacy {
  const factory _ApiPharmacy({final String name, final String pharmacyId}) =
      _$_ApiPharmacy;

  factory _ApiPharmacy.fromJson(Map<String, dynamic> json) =
      _$_ApiPharmacy.fromJson;

  @override
  String get name;
  @override
  String get pharmacyId;
  @override
  @JsonKey(ignore: true)
  _$$_ApiPharmacyCopyWith<_$_ApiPharmacy> get copyWith =>
      throw _privateConstructorUsedError;
}
