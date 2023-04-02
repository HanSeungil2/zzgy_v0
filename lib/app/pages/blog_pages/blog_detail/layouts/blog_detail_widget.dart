import '../../../../../../config.dart';

class BlogDetailWidget {
  //icon circle
  Widget iconCircle(icon, isScroll) =>
      SvgPicture.asset(icon, color: appCtrl.appTheme.blogTitle,height: Sizes.s15,width: Sizes.s15)
          .padding(all: Insets.i7)
          .decorated(
              color: isScroll
                  ? appCtrl.appTheme.blogPrimary
                  : appCtrl.appTheme.whiteColor,
              shape: BoxShape.circle);

  //back icon
  Widget backIcon(isScroll) => Icon(Icons.arrow_back_ios_sharp,
          color: appCtrl.appTheme.blogTitle, size: Sizes.s15)
      .padding(all: Insets.i10)
      .decorated(
          color: isScroll
              ? appCtrl.appTheme.blogPrimary
              : appCtrl.appTheme.whiteColor,
          shape: BoxShape.circle)
      .inkWell(onTap: () => Get.back())
      .alignment(Alignment.center);

  //search text box
  Widget searchTextBox(controller) => BlogTextBox(
    controller: controller,
      hinText: trans(blogThemeFont.writeYourComment),
      fillColor: appCtrl.appTheme.mainThemeBgColor,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.r8),
          borderSide: BorderSide.none),
      suffixIcon: SvgPicture.asset(blogSvgAssets.send,
          color: appCtrl.appTheme.blogContent,
          height: Sizes.s18).marginSymmetric(horizontal: Insets.i12));

  //title
  Widget titleText(text)=> Text(trans(text),
      style: AppCss.montserratSemiBold16
          .textColor(appCtrl.appTheme.blogTitle));
}
