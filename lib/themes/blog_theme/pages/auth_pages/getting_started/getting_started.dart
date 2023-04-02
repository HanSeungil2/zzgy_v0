import '/../../config.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonAuthBackground(
        child: DirectionalityRtl(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //continue with email button
              BlogButton(
                  onTap: () => Get.toNamed(routeName.blogLogin),
                  title: trans(blogThemeFont.continueWithEmail),
                  style: AppCss.montserratMedium16
                      .textColor(appCtrl.appTheme.whiteColor)),
              const VSpace(Sizes.s15),

              //continue with google button
              BlogButton(
                  title: trans(blogThemeFont.signInWithGoogle),
                  color: appCtrl.appTheme.whiteColor,
                  icon:
                      SvgPicture.asset(commonSvgAssets.google, height: Sizes.s18,color: appCtrl.appTheme.blackColor),
                  style: AppCss.montserratMedium16
                      .textColor(appCtrl.appTheme.blogTitle)),
              const VSpace(Sizes.s15),

              //continue with apple button
              BlogButton(
                  title: trans(blogThemeFont.signInWithApple),
                  color: appCtrl.appTheme.whiteColor,
                  icon:
                      SvgPicture.asset(commonSvgAssets.apple, height: Sizes.s18,color: appCtrl.appTheme.blackColor),
                  style: AppCss.montserratMedium16
                      .textColor(appCtrl.appTheme.blogTitle)),
              const VSpace(Sizes.s25),
            ],
          ),
        ),
      ),
    );
  }
}
