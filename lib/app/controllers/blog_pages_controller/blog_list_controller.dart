import '/../../config.dart';

class BlogListController extends GetxController {
  List<BlogModel> blogList = [];
  bool isShow=true;
  bool isShimmer=false;

  @override
  void onReady() async{
    // TODO: implement onReady
    isShimmer = true;
    blogList = blogAppArray.blogListData.map((e) => BlogModel.fromJson(e)).toList();
    update();
    await Future.delayed(Durations.ms150);
    isShimmer = false;
    update();
    super.onReady();
  }

}
