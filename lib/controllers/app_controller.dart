

import '../config.dart';

class AppController extends GetxController {
  AppTheme _appTheme = AppTheme.fromType(ThemeType.light);
  final storage = GetStorage();
  AppTheme get appTheme => _appTheme;
  int selectedIndex = 0;
  bool isTheme = false;
  bool isRTL = false;
  String languageVal = "in";
  int currVal = 1;
  String priceSymbol = "\$";
  dynamic currencyVal;
  double rateValue = 0.0;
  List drawerList = [];


  //update theme
  updateTheme(theme) {
    _appTheme = theme;
    Get.forceAppUpdate();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    getData();
    update();
    super.onReady();
  }

  //get data from storage
  getData()async{
    //theme check
    bool loadThemeFromStorage = storage.read('isDarkMode') ?? false;
    if (loadThemeFromStorage) {
      isTheme = true;
    } else {
      isTheme = false;
    }

    update();
    await storage.write("isDarkMode", isTheme);
    ThemeService().switchTheme(isTheme);
    update();
    Get.forceAppUpdate();
  }




}
