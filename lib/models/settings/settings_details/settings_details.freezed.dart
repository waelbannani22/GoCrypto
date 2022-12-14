// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsDetails {
  String get currentLanguage => throw _privateConstructorUsedError;
  String get favoriteExchange => throw _privateConstructorUsedError;
  String get favoritePair => throw _privateConstructorUsedError;
  String get themeMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsDetailsCopyWith<SettingsDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsDetailsCopyWith<$Res> {
  factory $SettingsDetailsCopyWith(
          SettingsDetails value, $Res Function(SettingsDetails) then) =
      _$SettingsDetailsCopyWithImpl<$Res>;
  $Res call(
      {String currentLanguage,
      String favoriteExchange,
      String favoritePair,
      String themeMode});
}

/// @nodoc
class _$SettingsDetailsCopyWithImpl<$Res>
    implements $SettingsDetailsCopyWith<$Res> {
  _$SettingsDetailsCopyWithImpl(this._value, this._then);

  final SettingsDetails _value;
  // ignore: unused_field
  final $Res Function(SettingsDetails) _then;

  @override
  $Res call({
    Object? currentLanguage = freezed,
    Object? favoriteExchange = freezed,
    Object? favoritePair = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_value.copyWith(
      currentLanguage: currentLanguage == freezed
          ? _value.currentLanguage
          : currentLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      favoriteExchange: favoriteExchange == freezed
          ? _value.favoriteExchange
          : favoriteExchange // ignore: cast_nullable_to_non_nullable
              as String,
      favoritePair: favoritePair == freezed
          ? _value.favoritePair
          : favoritePair // ignore: cast_nullable_to_non_nullable
              as String,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SettingsDetailsCopyWith<$Res>
    implements $SettingsDetailsCopyWith<$Res> {
  factory _$$_SettingsDetailsCopyWith(
          _$_SettingsDetails value, $Res Function(_$_SettingsDetails) then) =
      __$$_SettingsDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String currentLanguage,
      String favoriteExchange,
      String favoritePair,
      String themeMode});
}

/// @nodoc
class __$$_SettingsDetailsCopyWithImpl<$Res>
    extends _$SettingsDetailsCopyWithImpl<$Res>
    implements _$$_SettingsDetailsCopyWith<$Res> {
  __$$_SettingsDetailsCopyWithImpl(
      _$_SettingsDetails _value, $Res Function(_$_SettingsDetails) _then)
      : super(_value, (v) => _then(v as _$_SettingsDetails));

  @override
  _$_SettingsDetails get _value => super._value as _$_SettingsDetails;

  @override
  $Res call({
    Object? currentLanguage = freezed,
    Object? favoriteExchange = freezed,
    Object? favoritePair = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_$_SettingsDetails(
      currentLanguage: currentLanguage == freezed
          ? _value.currentLanguage
          : currentLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      favoriteExchange: favoriteExchange == freezed
          ? _value.favoriteExchange
          : favoriteExchange // ignore: cast_nullable_to_non_nullable
              as String,
      favoritePair: favoritePair == freezed
          ? _value.favoritePair
          : favoritePair // ignore: cast_nullable_to_non_nullable
              as String,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SettingsDetails implements _SettingsDetails {
  const _$_SettingsDetails(
      {required this.currentLanguage,
      required this.favoriteExchange,
      required this.favoritePair,
      required this.themeMode});

  @override
  final String currentLanguage;
  @override
  final String favoriteExchange;
  @override
  final String favoritePair;
  @override
  final String themeMode;

  @override
  String toString() {
    return 'SettingsDetails(currentLanguage: $currentLanguage, favoriteExchange: $favoriteExchange, favoritePair: $favoritePair, themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsDetails &&
            const DeepCollectionEquality()
                .equals(other.currentLanguage, currentLanguage) &&
            const DeepCollectionEquality()
                .equals(other.favoriteExchange, favoriteExchange) &&
            const DeepCollectionEquality()
                .equals(other.favoritePair, favoritePair) &&
            const DeepCollectionEquality().equals(other.themeMode, themeMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentLanguage),
      const DeepCollectionEquality().hash(favoriteExchange),
      const DeepCollectionEquality().hash(favoritePair),
      const DeepCollectionEquality().hash(themeMode));

  @JsonKey(ignore: true)
  @override
  _$$_SettingsDetailsCopyWith<_$_SettingsDetails> get copyWith =>
      __$$_SettingsDetailsCopyWithImpl<_$_SettingsDetails>(this, _$identity);
}

abstract class _SettingsDetails implements SettingsDetails {
  const factory _SettingsDetails(
      {required final String currentLanguage,
      required final String favoriteExchange,
      required final String favoritePair,
      required final String themeMode}) = _$_SettingsDetails;

  @override
  String get currentLanguage;
  @override
  String get favoriteExchange;
  @override
  String get favoritePair;
  @override
  String get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsDetailsCopyWith<_$_SettingsDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
