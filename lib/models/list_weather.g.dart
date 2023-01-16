// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListWeather _$$_ListWeatherFromJson(Map<String, dynamic> json) =>
    _$_ListWeather(
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      main: json['main'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_ListWeatherToJson(_$_ListWeather instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'main': instance.main,
    };
