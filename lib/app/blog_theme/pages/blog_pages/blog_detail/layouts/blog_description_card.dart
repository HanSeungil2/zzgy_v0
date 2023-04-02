import '../../../../../../config.dart';

class BlogDescriptionCard extends StatelessWidget {
  final int? index;
  final String? data;

  const BlogDescriptionCard({Key? key, this.index, this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        index == 0
            ? Row(
                children: [
                  SvgPicture.asset(blogSvgAssets.quotes,
                          color: appCtrl.appTheme.blackColor)
                      .padding(all: Insets.i10)
                      .decorated(
                          color: appCtrl.appTheme.blogPrimary,
                          borderRadius: BorderRadius.circular(AppRadius.r8)),
                  const HSpace(Sizes.s15),
                  Expanded(
                      child: Text(data!.tr,
                          style: AppCss.montserratSemiBold14
                              .textColor(appCtrl.appTheme.blogTitle)
                              .letterSpace(.5)
                              .textHeight(1.5)))
                ],
              ).marginOnly(bottom: Insets.i20)
            : Text(data!.tr,
                    style: AppCss.montserratMedium14
                        .textColor(appCtrl.appTheme.blogContentDark)
                        .letterSpace(.5)
                        .textHeight(1.5))
                .marginOnly(bottom: Insets.i20)
      ],
    );
  }
}
