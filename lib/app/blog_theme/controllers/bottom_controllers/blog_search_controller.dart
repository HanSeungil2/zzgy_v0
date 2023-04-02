import '/../../config.dart';

class BlogSearchController extends GetxController {
  List<BlogModel> allCategoryWiseData = [];
  List trendingTags =[];


  @override
  void onReady() {
    // TODO: implement onReady

    allCategoryWiseData = blogAppArray.categoryWiseData.getRange(0, 2).map((e) => BlogModel.fromJson(e)).toList();
    trendingTags = blogAppArray.trendingTags;
    update();
    super.onReady();
  }
}
