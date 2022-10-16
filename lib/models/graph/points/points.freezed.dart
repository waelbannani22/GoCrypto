// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'points.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Points {
  double get closeTime => throw _privateConstructorUsedError;
  double get openTime => throw _privateConstructorUsedError;
  double get highPrice => throw _privateConstructorUsedError;
  double get lowPrice => throw _privateConstructorUsedError;
  double get closePrice => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  double get quoteVolume => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PointsCopyWith<Points> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointsCopyWith<$Res> {
  factory $PointsCopyWith(Points value, $Res Function(Points) then) =
      _$PointsCopyWithImpl<$Res>;
  $Res call(
      {double closeTime,
      double openTime,
      double highPrice,
      double lowPrice,
      double closePrice,
      double volume,
      double quoteVolume});
}

/// @nodoc
class _$PointsCopyWithImpl<$Res> implements $PointsCopyWith<$Res> {
  _$PointsCopyWithImpl(this._value, this._then);

  final Points _value;
  // ignore: unused_field
  final $Res Function(Points) _then;

  @override
  $Res call({
    Object? closeTime = freezed,
    Object? openTime = freezed,
    Object? highPrice = freezed,
    Object? lowPrice = freezed,
    Object? closePrice = freezed,
    Object? volume = freezed,
    Object? quoteVolume = freezed,
  }) {
    return _then(_value.copyWith(
      closeTime: closeTime == freezed
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as double,
      openTime: openTime == freezed
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as double,
      highPrice: highPrice == freezed
          ? _value.highPrice
          : highPrice // ignore: cast_nullable_to_non_nullable
              as double,
      lowPrice: lowPrice == freezed
          ? _value.lowPrice
          : lowPrice // ignore: cast_nullable_to_non_nullable
              as double,
      closePrice: closePrice == freezed
          ? _value.closePrice
          : closePrice // ignore: cast_nullable_to_non_nullable
              as double,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      quoteVolume: quoteVolume == freezed
          ? _value.quoteVolume
          : quoteVolume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_PointsCopyWith<$Res> implements $PointsCopyWith<$Res> {
  factory _$$_PointsCopyWith(_$_Points value, $Res Function(_$_Points) then) =
      __$$_PointsCopyWithImpl<$Res>;
  @override
  $Res call(
      {double closeTime,
      double openTime,
      double highPrice,
      double lowPrice,
      double closePrice,
      double volume,
      double quoteVolume});
}

/// @nodoc
class __$$_PointsCopyWithImpl<$Res> extends _$PointsCopyWithImpl<$Res>
    implements _$$_PointsCopyWith<$Res> {
  __$$_PointsCopyWithImpl(_$_Points _value, $Res Function(_$_Points) _then)
      : super(_value, (v) => _then(v as _$_Points));

  @override
  _$_Points get _value => super._value as _$_Points;

  @override
  $Res call({
    Object? closeTime = freezed,
    Object? openTime = freezed,
    Object? highPrice = freezed,
    Object? lowPrice = freezed,
    Object? closePrice = freezed,
    Object? volume = freezed,
    Object? quoteVolume = freezed,
  }) {
    return _then(_$_Points(
      closeTime: closeTime == freezed
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as double,
      openTime: openTime == freezed
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as double,
      highPrice: highPrice == freezed
          ? _value.highPrice
          : highPrice // ignore: cast_nullable_to_non_nullable
              as double,
      lowPrice: lowPrice == freezed
          ? _value.lowPrice
          : lowPrice // ignore: cast_nullable_to_non_nullable
              as double,
      closePrice: closePrice == freezed
          ? _value.closePrice
          : closePrice // ignore: cast_nullable_to_non_nullable
              as double,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      quoteVolume: quoteVolume == freezed
          ? _value.quoteVolume
          : quoteVolume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Points implements _Points {
  const _$_Points(
      {required this.closeTime,
      required this.openTime,
      required this.highPrice,
      required this.lowPrice,
      required this.closePrice,
      required this.volume,
      required this.quoteVolume});

  @override
  final double closeTime;
  @override
  final double openTime;
  @override
  final double highPrice;
  @override
  final double lowPrice;
  @override
  final double closePrice;
  @override
  final double volume;
  @override
  final double quoteVolume;

  @override
  String toString() {
    return 'Points(closeTime: $closeTime, openTime: $openTime, highPrice: $highPrice, lowPrice: $lowPrice, closePrice: $closePrice, volume: $volume, quoteVolume: $quoteVolume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Points &&
            const DeepCollectionEquality().equals(other.closeTime, closeTime) &&
            const DeepCollectionEquality().equals(other.openTime, openTime) &&
            const DeepCollectionEquality().equals(other.highPrice, highPrice) &&
            const DeepCollectionEquality().equals(other.lowPrice, lowPrice) &&
            const DeepCollectionEquality()
                .equals(other.closePrice, closePrice) &&
            const DeepCollectionEquality().equals(other.volume, volume) &&
            const DeepCollectionEquality()
                .equals(other.quoteVolume, quoteVolume));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(closeTime),
      const DeepCollectionEquality().hash(openTime),
      const DeepCollectionEquality().hash(highPrice),
      const DeepCollectionEquality().hash(lowPrice),
      const DeepCollectionEquality().hash(closePrice),
      const DeepCollectionEquality().hash(volume),
      const DeepCollectionEquality().hash(quoteVolume));

  @JsonKey(ignore: true)
  @override
  _$$_PointsCopyWith<_$_Points> get copyWith =>
      __$$_PointsCopyWithImpl<_$_Points>(this, _$identity);
}

abstract class _Points implements Points {
  const factory _Points(
      {required final double closeTime,
      required final double openTime,
      required final double highPrice,
      required final double lowPrice,
      required final double closePrice,
      required final double volume,
      required final double quoteVolume}) = _$_Points;

  @override
  double get closeTime;
  @override
  double get openTime;
  @override
  double get highPrice;
  @override
  double get lowPrice;
  @override
  double get closePrice;
  @override
  double get volume;
  @override
  double get quoteVolume;
  @override
  @JsonKey(ignore: true)
  _$$_PointsCopyWith<_$_Points> get copyWith =>
      throw _privateConstructorUsedError;
}
