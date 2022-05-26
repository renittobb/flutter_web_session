import 'package:flutter_web_session/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  // shared preferences.
  late SharedPreferences prefs;
  RxString name = ''.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    prefs = await SharedPreferences.getInstance();
    name.value = prefs.getString('name') ?? 'Name';
  }

  @override
  void onReady() {
    super.onReady();
  }

  logOut() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLogin', false);
    Get.offAndToNamed(Routes.REGISTER);
  }
}
