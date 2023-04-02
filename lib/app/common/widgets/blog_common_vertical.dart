
import '../../../../../../config.dart';

class BlogCommonVertical extends StatelessWidget {
  final BlogModel? blogModel;

  const BlogCommonVertical({Key? key, this.blogModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(children: [
          Image.asset(blogModel!.image!, fit: BoxFit.cover,
              height: Sizes.s80,
              width: Sizes.s80)
              .clipRRect(all: AppRadius.r5),
          const HSpace(Sizes.s10),
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(trans(blogModel!.type!),
                    style: AppCss.montserratRegular12
                        .textColor(appCtrl.appTheme.blogContent)),
                const VSpace(Sizes.s6),
                Text(trans(blogModel!.name!),
                    style: AppCss.montserratSemiBold14
                        .textColor(appCtrl.appTheme.blogTitle)
                        .textHeight(1.3)),
                const VSpace(Sizes.s12),
                Row(children: [
                  Row(children: [
                    SvgPicture.asset(blogSvgAssets.user,
                        color: appCtrl.appTheme.blogContent, height: Sizes.s12),
                    const HSpace(Sizes.s5),
                    Text(
                        "${trans(blogThemeFont.by)} ${trans(blogModel!.blogBy!)}",
                        style: AppCss.montserratRegular12
                            .textColor(appCtrl.appTheme.blogContent))
                  ]),
                  const HSpace(Sizes.s8),
                  Row(children: [
                    SvgPicture.asset(blogSvgAssets.clock,
                        color: appCtrl.appTheme.blogContent, height: Sizes.s12),
                    const HSpace(Sizes.s5),
                    Text(trans(blogModel!.date!),
                        style: AppCss.montserratRegular12
                            .textColor(appCtrl.appTheme.blogContent))
                  ])
                ])
              ])),
        ]),
        if (blogModel!.isAdd!) const AdBadge()
      ],
    );
  }
}
