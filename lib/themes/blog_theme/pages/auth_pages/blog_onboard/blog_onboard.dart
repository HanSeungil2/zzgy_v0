import '/../../config.dart';

class BlogOnboard extends StatelessWidget {
  final onboardCtrl = Get.put(BlogOnboardController());

  BlogOnboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogOnboardController>(builder: (_) {
      return DirectionalityRtl(
        child: Scaffold(
            backgroundColor: appCtrl.appTheme.groceryTitleColor,
            body: onboardCtrl.onboardList.isNotEmpty
                ? DirectionalityRtl(
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                      //slider
                      const BlogOnboardSlider(),

                      //title and description
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                              trans(onboardCtrl
                                  .onboardList[onboardCtrl.currentIndex]["title"]),
                              style: AppCss.montserratSemiBold20
                                  .textColor(appCtrl.appTheme.blogTitle)),
                          const VSpace(Sizes.s8),
                          Text(
                              trans(onboardCtrl
                                  .onboardList[onboardCtrl.currentIndex]["desc"]),
                              style: AppCss.montserratRegular16
                                  .textColor(appCtrl.appTheme.blogContentDark)
                                  .textHeight(1.2)),
                          const VSpace(Sizes.s25),

                          //dot indicator and next button
                          BlogDotIndicator(
                            currentIndex: onboardCtrl.currentIndex,
                          )
                        ],
                      ).width(MediaQuery.of(context).size.width).marginSymmetric(
                          horizontal: Insets.i15, vertical: Insets.i20)
                    ]).height(MediaQuery.of(context).size.height),
                )
                : Container()),
      );
    });
  }
}
