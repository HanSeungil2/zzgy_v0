import '/../../config.dart';


class HomeBlog extends StatelessWidget {
  const HomeBlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(blogImageAssets.blog1).clipRRect(all: AppRadius.r8),
        const VSpace(Sizes.s10),
        Text(trans(blogThemeFont.blog1),
            style: AppCss.montserratSemiBold15
                .textColor(appCtrl.appTheme.blogTitle)
                .textHeight(1.3)),
        const VSpace(Sizes.s10),
        BlogDateTime(date: blogThemeFont.january242021,time: blogThemeFont.minRead)
      ],
    ).inkWell(onTap: ()=>Get.toNamed(routeName.blogDetail));
  }
}
