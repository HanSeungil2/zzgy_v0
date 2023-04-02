import '../../../../../config.dart';

class BlogSignup extends StatelessWidget {
  const BlogSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DirectionalityRtl(
      child: Scaffold(
        body: CommonAuthBackground(
            child: SingleChildScrollView(
              child: DirectionalityRtl(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Sign in text
                    Text(blogThemeFont.signUp.tr,style: AppCss.robotoSemiBold20.textColor(appCtrl.appTheme.whiteColor)).paddingOnly(bottom: Insets.i22),

                    //full name text box
                    BlogTextBox(
                        hinText: trans(blogThemeFont.fullName),
                        suffixIcon: SvgPicture.asset(blogSvgAssets.user,
                            color: appCtrl.appTheme.foodContentColor)
                            .marginSymmetric(horizontal: Insets.i15)),
                    const VSpace(Sizes.s15),
                    //email text box
                    BlogTextBox(
                        hinText: trans(blogThemeFont.emailAddress),
                        suffixIcon: Icon(Icons.alternate_email_rounded,
                            color: appCtrl.appTheme.foodContentColor)),
                    const VSpace(Sizes.s15),

                    //password textbox
                    BlogTextBox(
                        hinText: trans(blogThemeFont.password),
                        suffixIcon: SvgPicture.asset(blogSvgAssets.lock,
                            color: appCtrl.appTheme.foodContentColor)
                            .marginSymmetric(horizontal: Insets.i15)),
                    const VSpace(Sizes.s20),

                    //sign up button
                    BlogButton(
                        title: trans(blogThemeFont.signUp),
                        radius: AppRadius.r15,
                        margin: 0,
                        padding: Insets.i15,
                        style: AppCss.montserratMedium18
                            .textColor(appCtrl.appTheme.whiteColor)),
                    const VSpace(Sizes.s20),

                    //account account
                    Align(
                      alignment: Alignment.center,
                      child: Text(trans(blogThemeFont.alreadyAccount),
                          style: AppCss.montserratMedium14
                              .textColor(appCtrl.appTheme.whiteColor)).inkWell(onTap: ()=>Get.back()),
                    ),
                    const VSpace(Sizes.s20),
                  ],
                ).marginSymmetric(horizontal: Insets.i15),
              ),
            )
        ),
      ),
    );
  }
}
