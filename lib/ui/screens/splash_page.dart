import 'package:cuatrochenta_weather_rodrigo/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: gradientBackgroundSplash,
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: 40.0.h),
        child: Lottie.asset('assets/lotties/weather.json'),
      ),
    );
  }
}
