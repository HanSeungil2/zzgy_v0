import '../../../../../config.dart';

class BlogSearch extends StatelessWidget {
  final searchCtrl = Get.put(BlogSearchController());

  BlogSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogSearchController>(builder: (context) {
      return Scaffold(
        backgroundColor: appCtrl.appTheme.whiteColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //trending tags text
              Text(trans(blogThemeFont.trendingTags),
                      style: AppCss.montserratSemiBold14
                          .textColor(appCtrl.appTheme.blogTitle)),
              const VSpace(Sizes.s15),

              //trending tags list
              Wrap(
                children: searchCtrl.trendingTags
                    .map((e) => Text("#${e["title"]}",
                            style: AppCss.montserratRegular14
                                .textColor(appCtrl.appTheme.blogTitle1))
                        .paddingSymmetric(
                            horizontal: Insets.i16, vertical: Insets.i12)
                        .decorated(
                            color: appCtrl.appTheme.groceryGradientColor1,
                            borderRadius: BorderRadius.circular(AppRadius.r30)).marginOnly(right: Insets.i8).marginOnly(bottom: Insets.i15))
                    .toList(),
              ),
              const VSpace(Sizes.s25),

              //trending news text
              Text(trans(blogThemeFont.trendingNewsTitle),
                  style: AppCss.montserratSemiBold14
                      .textColor(appCtrl.appTheme.blogTitle)),
              const VSpace(Sizes.s15),

              //trending news list
              ...searchCtrl.allCategoryWiseData.map((e) => BlogCommonVertical(blogModel: e,).marginOnly(bottom: Insets.i15)).toList()
            ],
          ).marginSymmetric(vertical: Insets.i20,horizontal: Insets.i15),
        ),
      );
    });
  }
}
