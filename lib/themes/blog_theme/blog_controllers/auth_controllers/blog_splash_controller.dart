

import 'dart:async';

import '../../../../config.dart';

class BlogSplashController extends GetxController{

  Timer? timer;
  @override
  void onInit() async {
    timer = Timer(
        const Duration(seconds: 3),
            () =>  Get.toNamed(routeName.blogOnboard));

    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
    timer!.cancel();
  }
}