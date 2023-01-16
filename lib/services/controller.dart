import 'package:cuatrochenta_weather_rodrigo/models/time.dart';
import 'package:cuatrochenta_weather_rodrigo/models/user.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

class Controller extends GetxController {
  // APP
  var language = 'en'.obs;
  var messageSnackBar = ''.obs;
  var versionApp = ''.obs;
  var buildNumberApp = ''.obs;
  var currentIndex = 0.obs;
  var loading = false.obs;
  var box = GetStorage().obs;
  var user = User().obs;
  var time = Time().obs;
  // WEATHER
  var apiKeyWeather = 'c331af441c70402698c603662e366b8f'.obs;
  var latitudeNewYork = '40.730610'.obs;
  var longitudeNewYork = '-73.935242'.obs;
  var latitudeLisboa = '38.736946'.obs;
  var longitudeLisboa = '-9.142685'.obs;
  var latitudeMykonos = '37.450001'.obs;
  var longitudeMykonos = '25.350000'.obs;
}
