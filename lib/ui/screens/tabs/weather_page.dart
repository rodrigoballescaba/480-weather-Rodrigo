import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cuatrochenta_weather_rodrigo/models/city.dart';
import 'package:cuatrochenta_weather_rodrigo/models/list_weather.dart';
import 'package:cuatrochenta_weather_rodrigo/models/main.dart';
import 'package:cuatrochenta_weather_rodrigo/models/weather.dart';
import 'package:cuatrochenta_weather_rodrigo/services/controller.dart';
import 'package:cuatrochenta_weather_rodrigo/theme/colors.dart';
import 'package:cuatrochenta_weather_rodrigo/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:intl/intl.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> with TickerProviderStateMixin {
  AnimationController? _animationController;
  final _dateNow = DateTime.now().toLocal().obs;
  final _city = City().obs;
  final _weatherNow = Weather().obs;
  final _mainNow = Main().obs;
  final _timeNow = ''.obs;
  final Controller _controller = Get.find();
  final WeatherUtils _weatherUtils = Get.find();

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animationController!.repeat();
    _controller.language.listen((_) {
      _initView();
    });
    _controller.currentIndex.listen((_) {
      _initView();
    });
    _initView();
  }

  void _initView() {
    var list = _controller.time.value.list!.toList();
    var index = (_dateNow.value.hour / 3).round();
    _city(City.fromJson(_controller.time.value.city!));
    _weatherNow(Weather.fromJson(ListWeather.fromJson(list[index]).weather![0]));
    _mainNow(Main.fromJson(ListWeather.fromJson(list[index]).main!));
    _timeNow(_weatherUtils.capitalizeAll(DateFormat('MMM d, ' 'yyyy - HH:mm', _controller.language.value).format(DateTime.parse(_dateNow.value.toIso8601String()))));
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Center(
        child: Column(
          children: [
            SizedBox(
              height: 130.0.h,
            ),
            _nowTime(),
            SizedBox(
              height: 40.0.h,
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(child: _cardTimeWeek(0, _dateNow.value)),
                    Flexible(child: _cardTimeWeek(8, _dateNow.value.add(const Duration(days: 1)))),
                    Flexible(child: _cardTimeWeek(16, _dateNow.value.add(const Duration(days: 2)))),
                    Flexible(child: _cardTimeWeek(24, _dateNow.value.add(const Duration(days: 3)))),
                    Flexible(child: _cardTimeWeek(32, _dateNow.value.add(const Duration(days: 4)))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //ignore: long-method
  Widget _nowTime() {
    return Column(
      children: [
        SizedBox(
          width: 200.0.w,
          child: AutoSizeText(
            _city.value.name!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0.sp,
              color: white,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        CachedNetworkImage(
          imageUrl: 'http://openweathermap.org/img/wn/${_weatherNow.value.icon}@2x.png',
          fit: BoxFit.cover,
          width: 100.0.w,
          height: 100.0.h,
          placeholder: (context, url) => Center(
            child: CircularProgressIndicator(
              strokeWidth: 5.0.w,
              valueColor: _animationController!.drive(
                ColorTween(begin: blueOriginal, end: orange),
              ),
            ),
          ),
          errorWidget: (context, url, error) => const Placeholder(),
        ),
        SizedBox(
          width: 280.0.w,
          child: Center(
            child: AutoSizeText(
              _weatherUtils.capitalizeAll(_weatherNow.value.description!),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0.sp,
                color: white,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.0.h,
        ),
        Container(
          width: 180.0.w,
          decoration: BoxDecoration(
            color: blueLight.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20.0.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.0.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  '${_mainNow.value.temp} ºC',
                  style: TextStyle(
                    fontSize: 30.0.sp,
                    color: white,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                AutoSizeText.rich(
                  TextSpan(
                    text: '${_mainNow.value.temp_min} ºC',
                    recognizer: TapGestureRecognizer()..onTap = () => {},
                    style: TextStyle(
                      fontSize: 15.0.sp,
                      color: blueDark,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                    children: [
                      TextSpan(
                        text: ' / ',
                        recognizer: TapGestureRecognizer()..onTap = () => {},
                        style: TextStyle(
                          fontSize: 15.0.sp,
                          color: white,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                        children: [
                          TextSpan(
                            text: '${_mainNow.value.temp_max} ºC',
                            recognizer: TapGestureRecognizer()..onTap = () => {},
                            style: TextStyle(
                              fontSize: 15.0.sp,
                              color: orange,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.0.h,
        ),
        SizedBox(
          width: 280.0.w,
          child: Center(
            child: AutoSizeText(
              _timeNow.value,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0.sp,
                color: greyDark,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _cardTimeWeek(int index, DateTime date) {
    String weekDay = _weatherUtils.capitalize(DateFormat('E', _controller.language.value).format(DateTime.parse(date.toIso8601String())));
    ListWeather listWeather = ListWeather.fromJson(_controller.time.value.list![index]);
    Weather weather = Weather.fromJson(listWeather.weather![0]);
    Main main = Main.fromJson(listWeather.main!);

    return Column(
      children: [
        AutoSizeText(
          weekDay,
          style: TextStyle(
            fontSize: 10.0.sp,
            color: greyDark,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          ),
        ),
        SizedBox(
          height: 10.0.h,
        ),
        Container(
          decoration: BoxDecoration(
            color: blueLight.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20.0.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(5.0.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CachedNetworkImage(
                  imageUrl: 'http://openweathermap.org/img/wn/${weather.icon}@2x.png',
                  fit: BoxFit.cover,
                  width: 50.0.w,
                  height: 50.0.h,
                  placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 5.0.w,
                      valueColor: _animationController!.drive(
                        ColorTween(begin: blueOriginal, end: orange),
                      ),
                    ),
                  ),
                  errorWidget: (context, url, error) => const Placeholder(),
                ),
                AutoSizeText(
                  '${main.temp_min} ºC',
                  style: TextStyle(
                    fontSize: 10.0.sp,
                    color: blueDark,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                AutoSizeText(
                  '${main.temp_max} ºC',
                  style: TextStyle(
                    fontSize: 10.0.sp,
                    color: orange,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
