import 'package:flutter/cupertino.dart';

import '../../../../../config.dart';

class BlogLogin extends StatelessWidget {
  const BlogLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DirectionalityRtl(
      child: Scaffold(
        body: CommonAuthBackground(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Sign in text
               Text(blogThemeFont.blogSignIn.tr,style: AppCss.montserratSemiBold125.textColor(appCtrl.appTheme.whiteColor)).paddingOnly(bottom: Insets.i22),
                //email text box
                BlogTextBox(
                    hinText: trans(blogThemeFont.emailAddress),
                    suffixIcon: Icon(CupertinoIcons.at,
                        color: appCtrl.appTheme.foodContentColor,size: Sizes.s24)),
                const VSpace(Sizes.s15),

                //password text box
                BlogTextBox(
                    hinText: trans(blogThemeFont.password),
                    suffixIcon: SvgPicture.asset(blogSvgAssets.lock,
                            color: appCtrl.appTheme.blogContent,height: Sizes.s24,width: Sizes.s24)
                        .marginSymmetric(horizontal: Insets.i15)),
                const VSpace(Sizes.s15),

                //password text box
                Text(trans(blogThemeFont.forgotPassword),
                        style: AppCss.montserratSemiBold14
                            .textColor(appCtrl.appTheme.blogTitle))
                    .alignment(Alignment.centerRight),
                const VSpace(Sizes.s20),

                //sign in button
                BlogButton(
                    title: trans(blogThemeFont.blogSignIn),
                    radius: AppRadius.r15,
                    onTap: ()=>Get.toNamed(routeName.chooseTopic),
                    margin: 0,
                    height: Sizes.s50,
                    padding: Insets.i15,
                    style: AppCss.montserratMedium18
                        .textColor(appCtrl.appTheme.whiteColor)),
                const VSpace(Sizes.s20),

                //if you are new create account
                Align(
                  alignment: Alignment.center,
                  child: Text(trans(blogThemeFont.ifYourAreNew),
                      style: AppCss.montserratMedium14
                          .textColor(appCtrl.appTheme.whiteColor)).inkWell(onTap: ()=> Get.toNamed(routeName.blogSignup)),
                ),
                const VSpace(Sizes.s20),
              ],
            ).marginSymmetric(horizontal: Insets.i15),
          )
        ),
      ),
    );
  }
}
