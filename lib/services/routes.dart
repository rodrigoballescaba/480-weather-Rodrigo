import 'package:cuatrochenta_weather_rodrigo/ui/screens/home_page.dart';
import 'package:get/route_manager.dart';

class Routes {
  Future<void> goToHome() async {
    await Get.offAll(
      () => const HomePage(),
      transition: Transition.fadeIn,
      duration: const Duration(
        milliseconds: 400,
      ),
    );
  }
}
