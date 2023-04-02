import '/../../config.dart';

class BlogProfileController extends GetxController {
  List drawerList = [];
  List profileFollowers =[];

  @override
  void onReady() {
    // TODO: implement onReady

    drawerList = blogAppArray.drawerList;
    profileFollowers = blogAppArray.profileFollowers;
    update();

    super.onReady();
  }
}
