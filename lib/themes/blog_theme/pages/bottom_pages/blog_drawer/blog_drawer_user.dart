import '../../../../../config.dart';

class BlogDrawerUser extends StatelessWidget {
  const BlogDrawerUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ClipOval(
          child: SizedBox.fromSize(
              size: const Size.fromRadius(AppRadius.r30),
              // Image radius
              child: Image.asset(blogImageAssets.user))),
      const HSpace(Sizes.s10),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(trans(blogThemeFont.paigeTurner),
              style: AppCss.pubSansMedium16
                  .textColor(appCtrl.appTheme.groceryTitleColor)),
          const VSpace(Sizes.s8),
          Text(trans(blogThemeFont.email2),
              style: AppCss.publicSansRegular14
                  .textColor(appCtrl.appTheme.blogContent)),
        ],
      )
    ]);
  }
}
