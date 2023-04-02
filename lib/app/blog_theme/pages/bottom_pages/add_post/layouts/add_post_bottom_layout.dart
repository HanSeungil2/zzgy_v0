import '../../../../../../config.dart';

class AddPostBottomLayout extends StatelessWidget {
  const AddPostBottomLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: BlogDashboardWidget().tabBorderLayout(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 7,
                child: Row(children: [
                  SvgPicture.asset(blogSvgAssets.emoji),
                  SvgPicture.asset(blogSvgAssets.camera)
                      .marginSymmetric(horizontal: Insets.i30),
                  SvgPicture.asset(blogSvgAssets.mic)
                ])),
            const HSpace(Sizes.s35),
            Expanded(
                flex: 4,
                child: BlogButton(
                  height: Sizes.s35,
                  padding: 0,
                  margin: 0,
                  radius: AppRadius.r6,
                  title: trans(blogThemeFont.done),
                  style: AppCss.montserratSemiBold14
                      .textColor(appCtrl.appTheme.blogTitle),
                  color: appCtrl.appTheme.blogPrimary,
                ))
          ],
        )
                .marginSymmetric(horizontal: Insets.i15)
                .backgroundColor(appCtrl.appTheme.whiteColor)
                .marginAll(1)));
  }
}
