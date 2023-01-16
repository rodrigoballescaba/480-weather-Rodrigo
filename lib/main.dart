import 'dart:async';

import 'package:cuatrochenta_weather_rodrigo/services/controller.dart';
import 'package:cuatrochenta_weather_rodrigo/services/messages_service.dart';
import 'package:cuatrochenta_weather_rodrigo/services/rest_service.dart';
import 'package:cuatrochenta_weather_rodrigo/services/routes.dart';
import 'package:cuatrochenta_weather_rodrigo/theme/colors.dart';
import 'package:cuatrochenta_weather_rodrigo/ui/screens/splash_page.dart';
import 'package:cuatrochenta_weather_rodrigo/ui/widgets/progress_hud_widget.dart';
import 'package:cuatrochenta_weather_rodrigo/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await GetStorage.init();
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: black));
      await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      Get.lazyPut(() => Controller());
      Get.lazyPut(() => Routes());
      Get.lazyPut(() => RestService());
      Get.lazyPut(() => WeatherUtils());
      runApp(
        const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MyApp(),
        ),
      );
    },
    (exception, stackTrace) async {
      debugPrint(exception.toString());
    },
  );
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) => child;
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final Controller _controller = Get.find();
  final Routes _routes = Get.find();
  final RestService _restService = Get.find();
  final WeatherUtils _weatherUtils = Get.find();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initApp();
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        debugPrint("app in resumed");
        break;
      case AppLifecycleState.inactive:
        debugPrint("app in inactive");
        break;
      case AppLifecycleState.paused:
        debugPrint("app in paused");
        break;
      case AppLifecycleState.detached:
        debugPrint("app in detached");
        break;
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375.0, 812.0),
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: '480Weather',
          localizationsDelegates: const [
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          translations: MessagesService(),
          locale: Get.deviceLocale,
          fallbackLocale: const Locale('en'),
          supportedLocales: const [Locale('en'), Locale('es')],
          theme: _buildTheme(Brightness.dark),
          builder: (context, widget) {
            return Obx(
              () => ProgressHUDWidget(
                inAsyncCall: _controller.loading.value,
                child: MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                  child: ScrollConfiguration(
                    behavior: MyBehavior(),
                    child: widget!,
                  ),
                ),
              ),
            );
          },
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: const SplashPage(),
    );
  }

  ThemeData _buildTheme(brightness) {
    var baseTheme = ThemeData(
      brightness: brightness,
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.interTextTheme(baseTheme.textTheme),
    );
  }

  Future<void> _initApp() async {
    if (_controller.box().read('initApp') == null) {
      await _weatherUtils.initGetStorageValues();
    }
    _weatherUtils.snackBarMessages();
    await _weatherUtils.getDeviceInfo();
    await _weatherUtils.getPackageInfo();
    await Get.updateLocale(const Locale('en'));
    await _restService.getWeatherCity(_controller.language.value, 0);
    await Future.delayed(const Duration(milliseconds: 3000));
    await _routes.goToHome();
  }
}
