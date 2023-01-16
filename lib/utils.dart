import 'package:cuatrochenta_weather_rodrigo/services/controller.dart';
import 'package:cuatrochenta_weather_rodrigo/theme/colors.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:package_info_plus/package_info_plus.dart';

class WeatherUtils {
  final Controller _controller = Get.find();

  String capitalize(String s) {
    if (s.isNotEmpty && s.length > 1) {
      return s[0].toUpperCase() + s.substring(1);
    }

    return s;
  }

  String capitalizeAll(String s) {
    if (s.isNotEmpty && s.length > 1) {
      return s.split(" ").map((str) => capitalize(str)).join(" ");
    }

    return s;
  }

  Future<void> getDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (GetPlatform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      debugPrint('Running on ${androidInfo.model}');
    } else if (GetPlatform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      debugPrint('Running on ${iosInfo.utsname.machine}');
    } else if (GetPlatform.isIOS) {
      WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
      debugPrint('Running on ${webBrowserInfo.userAgent}');
    }
  }

  Future<void> getPackageInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String appName = packageInfo.appName;
    String packageName = packageInfo.packageName;
    _controller.versionApp(packageInfo.version);
    _controller.buildNumberApp(packageInfo.buildNumber);
    debugPrint('App Name: $appName');
    debugPrint('Package Name: $packageName');
    debugPrint('Version: ${_controller.versionApp.value}');
    debugPrint('Build Number: ${_controller.buildNumberApp.value}');
  }

  Future<void> initGetStorageValues() async {
    await _controller.box().write('initApp', false);
  }

  String getLat(int index) {
    return index == 0
        ? _controller.latitudeNewYork.value
        : index == 1
            ? _controller.latitudeLisboa.value
            : _controller.latitudeMykonos.value;
  }

  String getLon(int index) {
    return index == 0
        ? _controller.longitudeNewYork.value
        : index == 1
            ? _controller.longitudeLisboa.value
            : _controller.longitudeMykonos.value;
  }

  void snackBarMessages() {
    _controller.messageSnackBar.listen(
      (value) {
        if (value == 'errorStandard') {
          Get.snackbar(
            'error'.tr,
            'message_error_standard'.tr,
            backgroundColor: orange.withOpacity(0.8),
            colorText: white,
            snackPosition: SnackPosition.BOTTOM,
            margin: EdgeInsets.only(
              left: 10.0.w,
              right: 10.0.w,
              bottom: 10.0.h,
            ),
          );
          _controller.messageSnackBar('');
        } else if (value == 'confirmContact') {
          Get.snackbar(
            'ok'.tr,
            'confirmContact'.tr,
            backgroundColor: blueSuperLight.withOpacity(0.8),
            colorText: white,
            snackPosition: SnackPosition.BOTTOM,
            margin: EdgeInsets.only(
              left: 10.0.w,
              right: 10.0.w,
              bottom: 10.0.h,
            ),
          );
          _controller.messageSnackBar('');
        }
      },
    );
  }
}
