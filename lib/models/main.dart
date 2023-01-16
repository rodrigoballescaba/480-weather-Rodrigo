import 'package:freezed_annotation/freezed_annotation.dart';

part 'main.freezed.dart';

part 'main.g.dart';

@freezed
class Main with _$Main {
  factory Main({
    double? temp,
    // ignore: non_constant_identifier_names
    double? feels_like,
    // ignore: non_constant_identifier_names
    double? temp_min,
    // ignore: non_constant_identifier_names
    double? temp_max,
    double? pressure,
    double? humidity,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}
