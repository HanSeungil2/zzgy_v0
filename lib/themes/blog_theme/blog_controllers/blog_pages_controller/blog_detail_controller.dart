import '/../../config.dart';

class BlogDetailController extends GetxController {
  BlogDetailModel? blogDetailModel;
  List<BlogModel> relatedArticles = [];
  var scrollController = ScrollController();
  bool isScroll = false;
  TextEditingController controller = TextEditingController();

  @override
  void onReady() {
    // TODO: implement onReady
    scrollController = ScrollController();
    scrollController.addListener(_handleScrolling);
    blogDetailModel = BlogDetailModel.fromJson(blogAppArray.blogDetail);
    relatedArticles = blogAppArray.categoryWiseData.getRange(0, 2).map((e) => BlogModel.fromJson(e)).toList();
    update();
    super.onReady();
  }

  void _handleScrolling() {
    var isEnd = (scrollController.offset >=
        scrollController.position.maxScrollExtent) &&
        !scrollController.position.outOfRange &&
        (scrollController.position.axisDirection == AxisDirection.down);
    isScroll = isEnd;
    update();

    if (isEnd) {}
  }

}
