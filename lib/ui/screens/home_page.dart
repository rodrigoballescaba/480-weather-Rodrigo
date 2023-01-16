import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cuatrochenta_weather_rodrigo/services/controller.dart';
import 'package:cuatrochenta_weather_rodrigo/services/rest_service.dart';
import 'package:cuatrochenta_weather_rodrigo/theme/colors.dart';
import 'package:cuatrochenta_weather_rodrigo/ui/screens/tabs/contact_page.dart';
import 'package:cuatrochenta_weather_rodrigo/ui/screens/tabs/weather_page.dart';
import 'package:cuatrochenta_weather_rodrigo/ui/widgets/svg/lang/flag_english.dart';
import 'package:cuatrochenta_weather_rodrigo/ui/widgets/svg/lang/flag_spanish.dart';
import 'package:cuatrochenta_weather_rodrigo/ui/widgets/svg/tab/tab_contact.dart';
import 'package:cuatrochenta_weather_rodrigo/ui/widgets/svg/tab/tab_new_york.dart';
import 'package:cuatrochenta_weather_rodrigo/ui/widgets/svg/tab/tab_lisboa.dart';
import 'package:cuatrochenta_weather_rodrigo/ui/widgets/svg/tab/tab_mykonos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/instance_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Controller _controller = Get.find();
  final RestService _restService = Get.find();

  Future<void> _initView() async {
    debugPrint('Init View');
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(
      initState: (_) => _initView(),
      builder: (s) => Obx(
        () => WillPopScope(
          onWillPop: () async {
            return _onWillPop();
          },
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Container(
              decoration: const BoxDecoration(
                gradient: gradientBackgroundSplash,
              ),
              child: SafeArea(
                child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  backgroundColor: transparent,
                  body: Stack(
                    children: [
                      _languageWidget(),
                      IndexedStack(
                        index: _controller.currentIndex.value,
                        children: const [
                          WeatherPage(),
                          WeatherPage(),
                          WeatherPage(),
                          ContactPage(),
                        ],
                      ),
                    ],
                  ),
                  bottomNavigationBar: FadeInUp(child: getFooterArtist()),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getFooterArtist() {
    List bottomItems = [
      {
        "icon": CustomPaint(
          painter: RPSCustomPainterTabNewYork(),
        ),
        "label": "New York",
      },
      {
        "icon": CustomPaint(
          painter: RPSCustomPainterTabLisboa(),
        ),
        "label": "Lisboa",
      },
      {
        "icon": CustomPaint(
          painter: RPSCustomPainterTabMykonos(),
        ),
        "label": "Mykonos",
      },
      {
        "icon": CustomPaint(
          painter: RPSCustomPainterTabContact(),
        ),
        "label": "Contact",
      },
    ];

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: blueOriginal.withOpacity(0.3),
        borderRadius: BorderRadius.circular(57.0.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            bottomItems.length,
            (index) {
              return GestureDetector(
                onTap: () {
                  _onTabTapped(index);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: _controller.currentIndex.value == index ? blueSuperDark.withOpacity(0.2) : transparent,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.0.w),
                    child: SizedBox(
                      height: 26.0.h,
                      width: 35.0.w,
                      child: bottomItems[index]['icon'],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _languageWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: FadeInDown(
        child: Column(
          children: [
            SizedBox(
              height: 10.0.h,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: AutoSizeText(
                'language'.tr,
                style: TextStyle(
                  fontSize: 20.0.sp,
                  color: white,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal,
                  height: 1.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _languageType('es'),
                SizedBox(
                  width: 20.0.w,
                ),
                _languageType('en'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _languageType(String lang) {
    return SizedBox(
      width: 60.0.w,
      height: 60.0.h,
      child: Stack(
        children: [
          if (_controller.language.value == lang)
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: white.withOpacity(0.6),
              ),
            ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                _onLangSelect(lang);
              },
              child: CustomPaint(
                size: Size(40.0.w, 30.0.h),
                painter: lang == 'es' ? RPSCustomPainterFlagSpanish() : RPSCustomPainterFlagEnglish(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _onWillPop() {
    return true;
  }

  Future<void> _onTabTapped(int index) async {
    if (_controller.currentIndex.value != index) {
      _controller.loading(true);
      await _restService.getWeatherCity(_controller.language.value, index);
      _controller.currentIndex(index);
      _controller.loading(false);
    }
  }

  Future<void> _onLangSelect(String type) async {
    _controller.loading(true);
    await _restService.getWeatherCity(type, _controller.currentIndex.value);
    _controller.language(type);
    await Get.updateLocale(Locale(type));
    _controller.loading(false);
  }
}
