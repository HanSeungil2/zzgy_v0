import '/../../config.dart';

class BlogHome extends StatelessWidget {
  final homeCtrl = Get.put(BlogHomeController());

  BlogHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogDashboardController>(builder: (dashboardCtrl) {
      return GetBuilder<BlogHomeController>(builder: (context) {
        return Scaffold(
          backgroundColor: appCtrl.appTheme.whiteColor,
          body: dashboardCtrl.isShimmer
              ? const BlogHomeShimmer()
              : SingleChildScrollView(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //individual blog
                    const HomeBlog(),
                    const VSpace(Sizes.s30),

                    //last reading article text
                    Text(trans(blogThemeFont.lastReadingArticle),
                        style: AppCss.montserratSemiBold16
                            .textColor(appCtrl.appTheme.blogTitle)),
                    const VSpace(Sizes.s15),

                    //last reading article list
                    ...homeCtrl.lastReadingArticle
                        .map((e) => LastArticleData(blogModel: e)
                            .lastArticleExtension()
                            .inkWell(
                                onTap: () => Get.toNamed(routeName.blogList)))
                        .toList(),
                    const VSpace(Sizes.s30),

                    // category text
                    Text(trans(blogThemeFont.categories),
                        style: AppCss.montserratSemiBold16
                            .textColor(appCtrl.appTheme.blogTitle)),
                    const VSpace(Sizes.s15),

                    // category list
                    const BlogCategory(),
                    const VSpace(Sizes.s25),

                    //category wise data
                    ...homeCtrl.categoryWiseData
                        .map((e) => BlogHomeVerticalList(blogModel: e)
                            .decorated(color: appCtrl.appTheme.whiteColor)
                            .marginOnly(bottom: Insets.i22)
                            .inkWell(
                                onTap: () => Get.toNamed(routeName.blogDetail)))
                        .toList()
                  ],
                ).marginSymmetric(horizontal: Insets.i15)),
        );
      });
    });
  }
}
