import 'dart:convert';

import 'package:cuatrochenta_weather_rodrigo/models/time.dart';
import 'package:cuatrochenta_weather_rodrigo/services/controller.dart';
import 'package:cuatrochenta_weather_rodrigo/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:http/http.dart' as http;

class RestService {
  final Controller _controller = Get.find();
  final WeatherUtils _weatherUtils = Get.find();
  final String _endpoint = 'https://api.openweathermap.org/data/2.5/';

  Future<void> getWeatherCity(String language, int index) async {
    debugPrint('GET WEATHER');
    try {
      var headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        "Access-Control-Allow-Origin": "*",
      };
      var url = Uri.parse(
        '${_endpoint}forecast?lat=${_weatherUtils.getLat(index)}&lon=${_weatherUtils.getLon(index)}&APPID=${_controller.apiKeyWeather.value}&lang=$language&units=metric',
      );
      var response = await http.get(url, headers: headers);
      debugPrint('Response status: ${response.statusCode}');
      debugPrint('Response body: ${response.body}');
      if (response.statusCode == 200) {
        _controller.time(Time.fromJson(json.decode(utf8.decode(response.bodyBytes))));
      } else {
        _controller.messageSnackBar('errorStandard');
      }
    } catch (error) {
      debugPrint('Error Get Weather: $error');
    }
  }
}
