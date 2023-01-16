import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_weather.freezed.dart';
part 'list_weather.g.dart';

@freezed
class ListWeather with _$ListWeather {
  factory ListWeather({
    List<Map<String,dynamic>>? weather,
    Map<String,dynamic>? main,
  }) = _ListWeather;

  factory ListWeather.fromJson(Map<String, dynamic> json) => _$ListWeatherFromJson(json);
}
