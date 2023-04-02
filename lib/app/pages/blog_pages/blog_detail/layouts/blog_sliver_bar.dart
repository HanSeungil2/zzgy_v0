


import '../../../../../../config.dart';

class BlogSliverBar extends StatelessWidget {
  const BlogSliverBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogDetailController>(builder: (detailCtrl) {
      return SliverAppBar(
        expandedHeight: Sizes.s220,
        floating: true,
        pinned: true,
        stretch: true,
        snap: false,
        elevation: 0,
        backgroundColor: appCtrl.appTheme.whiteColor,
        automaticallyImplyLeading: false,
        centerTitle: false,
        actions: [
          BlogDetailWidget()
              .iconCircle(blogSvgAssets.share, detailCtrl.isScroll),
          const HSpace(Sizes.s10),
          BlogDetailWidget()
              .iconCircle(blogSvgAssets.bookmark, detailCtrl.isScroll),
          const HSpace(Sizes.s15)
        ],
        leading: BlogDetailWidget().backIcon(detailCtrl.isScroll),
        flexibleSpace: FlexibleSpaceBar(
          background: Stack(fit: StackFit.expand, children: <Widget>[
            Positioned.fill(
                child: Image.asset(blogImageAssets.blog1, fit: BoxFit.fill)),
        const SizedBox(
          height: double.infinity,
          width: double.infinity
        ).decorated(gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            colors: [appCtrl.appTheme.blackColor.withOpacity(0.5), Colors.transparent])),
            const Positioned.fill(
                child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: Insets.i15, horizontal: Insets.i10),
                  child: BottomAppBarLayout()),
            )),
          ]),
        ),
      );
    });
  }
}
