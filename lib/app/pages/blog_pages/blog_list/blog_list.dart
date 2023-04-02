import '/../../config.dart';

class BlogList extends StatelessWidget {
  final blogListCtrl = Get.put(BlogListController());

  BlogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogListController>(builder: (_) {
      return DirectionalityRtl(
        child: Scaffold(
          appBar: const BlogAppBar(isMenu: false),
          body: blogListCtrl.isShimmer
              ? const BlogListShimmer()
              : SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (blogListCtrl.isShow)
                          BlogTextBox(
                              hinText: trans(blogThemeFont.searchProduct),
                              fillColor: appCtrl.appTheme.mainThemeBgColor,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(AppRadius.r8),
                                  borderSide: BorderSide.none),
                              prefixIcon: SvgPicture.asset(blogSvgAssets.search,
                                      color: appCtrl.appTheme.blogContent,
                                      height: Sizes.s18)
                                  .marginSymmetric(horizontal: Insets.i15),
                              suffixIcon: SvgPicture.asset(blogSvgAssets.mic,
                                      color: appCtrl.appTheme.blogContent,
                                      height: Sizes.s18)
                                  .marginSymmetric(horizontal: Insets.i15)),
                        if (blogListCtrl.isShow) const VSpace(Sizes.s30),
                        Text(
                            "${blogListCtrl.blogList.length.toString()} ${trans(blogThemeFont.resultsFound)}",
                            style: AppCss.montserratSemiBold16
                                .textColor(appCtrl.appTheme.blogTitle)),
                        const VSpace(Sizes.s15),
                        ...blogListCtrl.blogList.map((e) =>
                            BlogCommonVertical(blogModel: e)
                                .marginOnly(bottom: Insets.i22).inkWell(onTap: ()=> Get.toNamed(routeName.blogList)))
                      ]).marginSymmetric(horizontal: Insets.i15),
                ),
        ),
      );
    });
  }
}
