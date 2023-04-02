import '../../../config.dart';

class BlogHomeShimmer extends StatelessWidget {
  const BlogHomeShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: appCtrl.appTheme.darkGray.withOpacity(.3),
        highlightColor: appCtrl.appTheme.darkGray.withOpacity(.1),
        child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          BlogShimmer(
              width: MediaQuery.of(context).size.width, height: Sizes.s180),
          const VSpace(Sizes.s10),
          BlogShimmer(width: MediaQuery.of(context).size.width),
          const VSpace(Sizes.s10),
          const BlogShimmer(width: Sizes.s100),
          const VSpace(Sizes.s20),
          const BlogShimmer(width: Sizes.s200),
          const VSpace(Sizes.s30),
          const BlogShimmer(width: Sizes.s120),
          const VSpace(Sizes.s20),
          ...blogAppArray.lastReadingArticle.map((e) => Row(children: [
                const BlogShimmer(width: Sizes.s80, height: Sizes.s80),
                const HSpace(Sizes.s10),
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      BlogShimmer(width: MediaQuery.of(context).size.width),
                      const VSpace(Sizes.s10),
                      const BlogShimmer(width: Sizes.s100),
                      const VSpace(Sizes.s20),
                      BlogShimmer(
                          width: MediaQuery.of(context).size.width,
                          height: Sizes.s12,
                          radius: AppRadius.r15)
                    ]))
              ]).marginOnly(bottom: Insets.i15)),
          const VSpace(Sizes.s30),
          const BlogShimmer(width: Sizes.s120),
          const VSpace(Sizes.s20),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                ...blogAppArray.category.map((e) => const BlogShimmer(
                        width: Sizes.s100,
                        height: Sizes.s30,
                        radius: AppRadius.r30)
                    .marginOnly(right: Insets.i15))
              ])),
          const VSpace(Sizes.s30),
          const VerticalBlogShimmer()
        ]).marginSymmetric(horizontal: Insets.i15, vertical: Insets.i15)));
  }
}
