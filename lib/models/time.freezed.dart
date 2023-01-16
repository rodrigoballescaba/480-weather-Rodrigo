// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Time _$TimeFromJson(Map<String, dynamic> json) {
  return _Time.fromJson(json);
}

/// @nodoc
mixin _$Time {
  List<Map<String, dynamic>>? get list => throw _privateConstructorUsedError;
  Map<String, dynamic>? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeCopyWith<Time> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeCopyWith<$Res> {
  factory $TimeCopyWith(Time value, $Res Function(Time) then) =
      _$TimeCopyWithImpl<$Res, Time>;
  @useResult
  $Res call({List<Map<String, dynamic>>? list, Map<String, dynamic>? city});
}

/// @nodoc
class _$TimeCopyWithImpl<$Res, $Val extends Time>
    implements $TimeCopyWith<$Res> {
  _$TimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimeCopyWith<$Res> implements $TimeCopyWith<$Res> {
  factory _$$_TimeCopyWith(_$_Time value, $Res Function(_$_Time) then) =
      __$$_TimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Map<String, dynamic>>? list, Map<String, dynamic>? city});
}

/// @nodoc
class __$$_TimeCopyWithImpl<$Res> extends _$TimeCopyWithImpl<$Res, _$_Time>
    implements _$$_TimeCopyWith<$Res> {
  __$$_TimeCopyWithImpl(_$_Time _value, $Res Function(_$_Time) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
    Object? city = freezed,
  }) {
    return _then(_$_Time(
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      city: freezed == city
          ? _value._city
          : city // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Time implements _Time {
  _$_Time(
      {final List<Map<String, dynamic>>? list,
      final Map<String, dynamic>? city})
      : _list = list,
        _city = city;

  factory _$_Time.fromJson(Map<String, dynamic> json) => _$$_TimeFromJson(json);

  final List<Map<String, dynamic>>? _list;
  @override
  List<Map<String, dynamic>>? get list {
    final value = _list;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _city;
  @override
  Map<String, dynamic>? get city {
    final value = _city;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Time(list: $list, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Time &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality().equals(other._city, _city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(_city));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeCopyWith<_$_Time> get copyWith =>
      __$$_TimeCopyWithImpl<_$_Time>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeToJson(
      this,
    );
  }
}

abstract class _Time implements Time {
  factory _Time(
      {final List<Map<String, dynamic>>? list,
      final Map<String, dynamic>? city}) = _$_Time;

  factory _Time.fromJson(Map<String, dynamic> json) = _$_Time.fromJson;

  @override
  List<Map<String, dynamic>>? get list;
  @override
  Map<String, dynamic>? get city;
  @override
  @JsonKey(ignore: true)
  _$$_TimeCopyWith<_$_Time> get copyWith => throw _privateConstructorUsedError;
}
