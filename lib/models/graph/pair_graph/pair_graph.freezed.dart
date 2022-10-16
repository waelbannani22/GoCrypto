// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pair_graph.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PairGraph {
  String get period => throw _privateConstructorUsedError;
  List<Points> get points => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PairGraphCopyWith<PairGraph> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PairGraphCopyWith<$Res> {
  factory $PairGraphCopyWith(PairGraph value, $Res Function(PairGraph) then) =
      _$PairGraphCopyWithImpl<$Res>;
  $Res call({String period, List<Points> points});
}

/// @nodoc
class _$PairGraphCopyWithImpl<$Res> implements $PairGraphCopyWith<$Res> {
  _$PairGraphCopyWithImpl(this._value, this._then);

  final PairGraph _value;
  // ignore: unused_field
  final $Res Function(PairGraph) _then;

  @override
  $Res call({
    Object? period = freezed,
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Points>,
    ));
  }
}

/// @nodoc
abstract class _$$_PairGraphCopyWith<$Res> implements $PairGraphCopyWith<$Res> {
  factory _$$_PairGraphCopyWith(
          _$_PairGraph value, $Res Function(_$_PairGraph) then) =
      __$$_PairGraphCopyWithImpl<$Res>;
  @override
  $Res call({String period, List<Points> points});
}

/// @nodoc
class __$$_PairGraphCopyWithImpl<$Res> extends _$PairGraphCopyWithImpl<$Res>
    implements _$$_PairGraphCopyWith<$Res> {
  __$$_PairGraphCopyWithImpl(
      _$_PairGraph _value, $Res Function(_$_PairGraph) _then)
      : super(_value, (v) => _then(v as _$_PairGraph));

  @override
  _$_PairGraph get _value => super._value as _$_PairGraph;

  @override
  $Res call({
    Object? period = freezed,
    Object? points = freezed,
  }) {
    return _then(_$_PairGraph(
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Points>,
    ));
  }
}

/// @nodoc

class _$_PairGraph implements _PairGraph {
  const _$_PairGraph({required this.period, required final List<Points> points})
      : _points = points;

  @override
  final String period;
  final List<Points> _points;
  @override
  List<Points> get points {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  String toString() {
    return 'PairGraph(period: $period, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PairGraph &&
            const DeepCollectionEquality().equals(other.period, period) &&
            const DeepCollectionEquality().equals(other._points, _points));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(period),
      const DeepCollectionEquality().hash(_points));

  @JsonKey(ignore: true)
  @override
  _$$_PairGraphCopyWith<_$_PairGraph> get copyWith =>
      __$$_PairGraphCopyWithImpl<_$_PairGraph>(this, _$identity);
}

abstract class _PairGraph implements PairGraph {
  const factory _PairGraph(
      {required final String period,
      required final List<Points> points}) = _$_PairGraph;

  @override
  String get period;
  @override
  List<Points> get points;
  @override
  @JsonKey(ignore: true)
  _$$_PairGraphCopyWith<_$_PairGraph> get copyWith =>
      throw _privateConstructorUsedError;
}
