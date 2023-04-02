import '../../../../../../config.dart';

class BlogDetailBody extends StatelessWidget {
  const BlogDetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogDetailController>(
      builder: (detailCtrl) {
        return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(trans(detailCtrl.blogDetailModel!.blogTitle!),
                    style: AppCss.montserratSemiBold14
                        .textColor(appCtrl.appTheme.blogTitle)
                        .letterSpace(.5)
                        .textHeight(1.2)),
                const VSpace(Sizes.s10),
                BlogDateTime(
                    date: detailCtrl.blogDetailModel!.date,
                    time: detailCtrl.blogDetailModel!.readTime!),
                const VSpace(Sizes.s20),
                ...detailCtrl.blogDetailModel!.blogDes!
                    .asMap()
                    .entries
                    .map((e) => BlogDescriptionCard(
                  data: e.value,
                  index: e.key,
                ))
                    .toList(),
                const VSpace(Sizes.s15),
                BlogDetailWidget().titleText(blogThemeFont.comments),
                const VSpace(Sizes.s20),
                ...detailCtrl.blogDetailModel!.comments!
                    .asMap()
                    .entries
                    .map((e) => CommentListCard(
                  comments: e.value,
                ))
                    .toList(),
                const VSpace(Sizes.s10),
                BlogDetailWidget().searchTextBox(detailCtrl.controller),
                const VSpace(Sizes.s30),
                BlogDetailWidget().titleText(blogThemeFont.relatedArticles),
                const VSpace(Sizes.s15),
                //trending news list
                ...detailCtrl.relatedArticles
                    .map((e) => BlogCommonVertical(blogModel: e)
                    .marginOnly(bottom: Insets.i15))
                    .toList()
              ],
            )
                .marginSymmetric(
                vertical: Insets.i20, horizontal: Insets.i15)
                .backgroundColor(appCtrl.appTheme.whiteColor));
      }
    );
  }
}
