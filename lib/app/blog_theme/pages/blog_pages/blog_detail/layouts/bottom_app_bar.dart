import '../../../../../../config.dart';

class BottomAppBarLayout extends StatelessWidget {
  const BottomAppBarLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogDetailController>(builder: (detailCtrl) {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  const UserImage(),
                  const HSpace(Sizes.s8),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(trans(detailCtrl.blogDetailModel!.name!),
                            style: AppCss.montserratSemiBold15
                                .textColor(appCtrl.appTheme.whiteColor)),
                        const VSpace(Sizes.s5),
                        Text("@${trans(detailCtrl.blogDetailModel!.userName!)}",
                            style: AppCss.montserratMedium14
                                .textColor(appCtrl.appTheme.whiteColor))
                      ])
                ]),
                Text(trans(blogThemeFont.follow),
                        style: AppCss.montserratMedium14
                            .textColor(appCtrl.appTheme.blackColor))
                    .paddingSymmetric(
                        horizontal: Insets.i20, vertical: Insets.i6)
                    .decorated(
                        color: appCtrl.appTheme.blogPrimary,
                        borderRadius: BorderRadius.circular(AppRadius.r30))
              ],
            )
          ]);
    });
  }
}
