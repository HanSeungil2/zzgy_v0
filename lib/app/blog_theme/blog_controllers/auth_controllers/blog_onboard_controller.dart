

import '../../../../config.dart';
import '../../index.dart';

class BlogOnboardController extends GetxController{
  int currentIndex =0;
  List onboardList =[];

  @override
  void onReady() {
    // TODO: implement onReady
    onboardList = blogAppArray.onBoardList;
    update();
    super.onReady();
  }

}