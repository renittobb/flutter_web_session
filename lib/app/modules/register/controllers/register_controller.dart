import 'package:flutter_web_session/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterController extends GetxController {
  // shared preferences.
  late SharedPreferences prefs;
  late bool isLoggedIn;
  RxString name = ''.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    prefs = await SharedPreferences.getInstance();
    isLoggedIn = prefs.getBool('isLogin') ?? false;
    name.value = prefs.getString('name') ?? 'Name';
    //if logged in
    if (isLoggedIn) {
      //navigate to Home
      Get.toNamed(Routes.HOME);
    }
  }

  registerUser() async {
    //create and store session data
    prefs = await SharedPreferences.getInstance();
    await prefs.setString('session', 'mySession');
    await prefs.setString('name', 'Renitto Jose');
    await prefs.setBool('isLogin', true);
    //navigate to Home
    Get.toNamed(Routes.HOME);
  }

  goHome() {
    //navigate to Home
    Get.toNamed(Routes.HOME);
  }
}
