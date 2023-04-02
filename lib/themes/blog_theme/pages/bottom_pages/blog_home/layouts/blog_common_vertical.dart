

import '../../../../../../config.dart';

class BlogHomeVerticalList extends StatelessWidget {
  final BlogModel? blogModel;

  const BlogHomeVerticalList({Key? key, this.blogModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(trans(blogModel!.type!),
              style: AppCss.montserratRegular12
                  .textColor(appCtrl.appTheme.blogContent)),
          const VSpace(Sizes.s6),
          Text(trans(blogModel!.name!),
              style: AppCss.montserratMedium12
                  .textColor(appCtrl.appTheme.blogTitle)
                  .textHeight(1.3)),
          const VSpace(Sizes.s12),
          Row(
            children: [
              Row(children: [
                SvgPicture.asset(blogSvgAssets.user,
                    color: appCtrl.appTheme.blogContent, height: Sizes.s12),
                const HSpace(Sizes.s5),
                Text("${trans(blogThemeFont.by)} ${trans(blogModel!.blogBy!)}",
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
            ],
          )
        ])),
        const HSpace(Sizes.s10),
        FadeInImage(
                placeholder: AssetImage(blogImageAssets.logo),
                image: AssetImage(blogModel!.image!),
                fit: BoxFit.cover,
                height: Sizes.s80,
                width: Sizes.s80)
            .clipRRect(all: AppRadius.r5)
      ],
    );
  }
}
