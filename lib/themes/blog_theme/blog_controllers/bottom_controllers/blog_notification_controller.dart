import '/../../config.dart';

class BlogNotificationController extends GetxController {
  List notificationList = [];
  bool isShimmer = false;

  @override
  void onReady() async{
    // TODO: implement onReady
    isShimmer = true;
    notificationList = blogAppArray.notificationList;
    update();
    await Future.delayed(Durations.ms150);
    isShimmer = false;
    update();
    super.onReady();
  }

  //mark as all read
  readAll(){
    for(var list in notificationList){
      list["isRead"] = true;
    }
    update();
  }
}
