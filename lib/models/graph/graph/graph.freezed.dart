// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'graph.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Graph {
  List<PairGraph> get pairs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GraphCopyWith<Graph> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphCopyWith<$Res> {
  factory $GraphCopyWith(Graph value, $Res Function(Graph) then) =
      _$GraphCopyWithImpl<$Res>;
  $Res call({List<PairGraph> pairs});
}

/// @nodoc
class _$GraphCopyWithImpl<$Res> implements $GraphCopyWith<$Res> {
  _$GraphCopyWithImpl(this._value, this._then);

  final Graph _value;
  // ignore: unused_field
  final $Res Function(Graph) _then;

  @override
  $Res call({
    Object? pairs = freezed,
  }) {
    return _then(_value.copyWith(
      pairs: pairs == freezed
          ? _value.pairs
          : pairs // ignore: cast_nullable_to_non_nullable
              as List<PairGraph>,
    ));
  }
}

/// @nodoc
abstract class _$$_GraphCopyWith<$Res> implements $GraphCopyWith<$Res> {
  factory _$$_GraphCopyWith(_$_Graph value, $Res Function(_$_Graph) then) =
      __$$_GraphCopyWithImpl<$Res>;
  @override
  $Res call({List<PairGraph> pairs});
}

/// @nodoc
class __$$_GraphCopyWithImpl<$Res> extends _$GraphCopyWithImpl<$Res>
    implements _$$_GraphCopyWith<$Res> {
  __$$_GraphCopyWithImpl(_$_Graph _value, $Res Function(_$_Graph) _then)
      : super(_value, (v) => _then(v as _$_Graph));

  @override
  _$_Graph get _value => super._value as _$_Graph;

  @override
  $Res call({
    Object? pairs = freezed,
  }) {
    return _then(_$_Graph(
      pairs: pairs == freezed
          ? _value._pairs
          : pairs // ignore: cast_nullable_to_non_nullable
              as List<PairGraph>,
    ));
  }
}

/// @nodoc

class _$_Graph implements _Graph {
  const _$_Graph({required final List<PairGraph> pairs}) : _pairs = pairs;

  final List<PairGraph> _pairs;
  @override
  List<PairGraph> get pairs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pairs);
  }

  @override
  String toString() {
    return 'Graph(pairs: $pairs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Graph &&
            const DeepCollectionEquality().equals(other._pairs, _pairs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pairs));

  @JsonKey(ignore: true)
  @override
  _$$_GraphCopyWith<_$_Graph> get copyWith =>
      __$$_GraphCopyWithImpl<_$_Graph>(this, _$identity);
}

abstract class _Graph implements Graph {
  const factory _Graph({required final List<PairGraph> pairs}) = _$_Graph;

  @override
  List<PairGraph> get pairs;
  @override
  @JsonKey(ignore: true)
  _$$_GraphCopyWith<_$_Graph> get copyWith =>
      throw _privateConstructorUsedError;
}
