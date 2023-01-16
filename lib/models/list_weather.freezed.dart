// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListWeather _$ListWeatherFromJson(Map<String, dynamic> json) {
  return _ListWeather.fromJson(json);
}

/// @nodoc
mixin _$ListWeather {
  List<Map<String, dynamic>>? get weather => throw _privateConstructorUsedError;
  Map<String, dynamic>? get main => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListWeatherCopyWith<ListWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListWeatherCopyWith<$Res> {
  factory $ListWeatherCopyWith(
          ListWeather value, $Res Function(ListWeather) then) =
      _$ListWeatherCopyWithImpl<$Res, ListWeather>;
  @useResult
  $Res call({List<Map<String, dynamic>>? weather, Map<String, dynamic>? main});
}

/// @nodoc
class _$ListWeatherCopyWithImpl<$Res, $Val extends ListWeather>
    implements $ListWeatherCopyWith<$Res> {
  _$ListWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = freezed,
    Object? main = freezed,
  }) {
    return _then(_value.copyWith(
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListWeatherCopyWith<$Res>
    implements $ListWeatherCopyWith<$Res> {
  factory _$$_ListWeatherCopyWith(
          _$_ListWeather value, $Res Function(_$_ListWeather) then) =
      __$$_ListWeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Map<String, dynamic>>? weather, Map<String, dynamic>? main});
}

/// @nodoc
class __$$_ListWeatherCopyWithImpl<$Res>
    extends _$ListWeatherCopyWithImpl<$Res, _$_ListWeather>
    implements _$$_ListWeatherCopyWith<$Res> {
  __$$_ListWeatherCopyWithImpl(
      _$_ListWeather _value, $Res Function(_$_ListWeather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = freezed,
    Object? main = freezed,
  }) {
    return _then(_$_ListWeather(
      weather: freezed == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      main: freezed == main
          ? _value._main
          : main // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListWeather implements _ListWeather {
  _$_ListWeather(
      {final List<Map<String, dynamic>>? weather,
      final Map<String, dynamic>? main})
      : _weather = weather,
        _main = main;

  factory _$_ListWeather.fromJson(Map<String, dynamic> json) =>
      _$$_ListWeatherFromJson(json);

  final List<Map<String, dynamic>>? _weather;
  @override
  List<Map<String, dynamic>>? get weather {
    final value = _weather;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _main;
  @override
  Map<String, dynamic>? get main {
    final value = _main;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ListWeather(weather: $weather, main: $main)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListWeather &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            const DeepCollectionEquality().equals(other._main, _main));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_weather),
      const DeepCollectionEquality().hash(_main));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListWeatherCopyWith<_$_ListWeather> get copyWith =>
      __$$_ListWeatherCopyWithImpl<_$_ListWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListWeatherToJson(
      this,
    );
  }
}

abstract class _ListWeather implements ListWeather {
  factory _ListWeather(
      {final List<Map<String, dynamic>>? weather,
      final Map<String, dynamic>? main}) = _$_ListWeather;

  factory _ListWeather.fromJson(Map<String, dynamic> json) =
      _$_ListWeather.fromJson;

  @override
  List<Map<String, dynamic>>? get weather;
  @override
  Map<String, dynamic>? get main;
  @override
  @JsonKey(ignore: true)
  _$$_ListWeatherCopyWith<_$_ListWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
