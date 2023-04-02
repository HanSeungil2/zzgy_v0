

import '../../../../../config.dart';
import 'layouts/blog_detail_body.dart';


class BlogDetail extends StatefulWidget {
  const BlogDetail({Key? key}) : super(key: key);

  @override
  State<BlogDetail> createState() => _BlogDetailState();
}

class _BlogDetailState extends State<BlogDetail> {
  final detailCtrl = Get.put(BlogDetailController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogDetailController>(builder: (_) {
      return DirectionalityRtl(
        child: Scaffold(
          body: detailCtrl.blogDetailModel != null
              ? NestedScrollView(
                  controller: detailCtrl.scrollController,
                  physics: const ScrollPhysics(parent: PageScrollPhysics()),
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return [const BlogSliverBar()];
                  },
                  body: const BlogDetailBody())
              : Container(),
        ),
      );
    });
  }
}
