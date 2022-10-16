// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exchanges_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExchangesResponse _$ExchangesResponseFromJson(Map<String, dynamic> json) {
  return _ExchangesResponse.fromJson(json);
}

/// @nodoc
mixin _$ExchangesResponse {
  List<Exchange> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangesResponseCopyWith<ExchangesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangesResponseCopyWith<$Res> {
  factory $ExchangesResponseCopyWith(
          ExchangesResponse value, $Res Function(ExchangesResponse) then) =
      _$ExchangesResponseCopyWithImpl<$Res>;
  $Res call({List<Exchange> result});
}

/// @nodoc
class _$ExchangesResponseCopyWithImpl<$Res>
    implements $ExchangesResponseCopyWith<$Res> {
  _$ExchangesResponseCopyWithImpl(this._value, this._then);

  final ExchangesResponse _value;
  // ignore: unused_field
  final $Res Function(ExchangesResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Exchange>,
    ));
  }
}

/// @nodoc
abstract class _$$_ExchangesResponseCopyWith<$Res>
    implements $ExchangesResponseCopyWith<$Res> {
  factory _$$_ExchangesResponseCopyWith(_$_ExchangesResponse value,
          $Res Function(_$_ExchangesResponse) then) =
      __$$_ExchangesResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Exchange> result});
}

/// @nodoc
class __$$_ExchangesResponseCopyWithImpl<$Res>
    extends _$ExchangesResponseCopyWithImpl<$Res>
    implements _$$_ExchangesResponseCopyWith<$Res> {
  __$$_ExchangesResponseCopyWithImpl(
      _$_ExchangesResponse _value, $Res Function(_$_ExchangesResponse) _then)
      : super(_value, (v) => _then(v as _$_ExchangesResponse));

  @override
  _$_ExchangesResponse get _value => super._value as _$_ExchangesResponse;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$_ExchangesResponse(
      result: result == freezed
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Exchange>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExchangesResponse implements _ExchangesResponse {
  const _$_ExchangesResponse({required final List<Exchange> result})
      : _result = result;

  factory _$_ExchangesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ExchangesResponseFromJson(json);

  final List<Exchange> _result;
  @override
  List<Exchange> get result {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'ExchangesResponse(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangesResponse &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  _$$_ExchangesResponseCopyWith<_$_ExchangesResponse> get copyWith =>
      __$$_ExchangesResponseCopyWithImpl<_$_ExchangesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExchangesResponseToJson(
      this,
    );
  }
}

abstract class _ExchangesResponse implements ExchangesResponse {
  const factory _ExchangesResponse({required final List<Exchange> result}) =
      _$_ExchangesResponse;

  factory _ExchangesResponse.fromJson(Map<String, dynamic> json) =
      _$_ExchangesResponse.fromJson;

  @override
  List<Exchange> get result;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangesResponseCopyWith<_$_ExchangesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
