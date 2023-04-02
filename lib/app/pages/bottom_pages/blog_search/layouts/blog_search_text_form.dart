import '../../../../../../config.dart';

class BlogSearchTextForm extends StatelessWidget {
  final TextEditingController? controller;
  const BlogSearchTextForm({Key? key,this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: AppCss.montserratRegular14
          .textColor(appCtrl.appTheme.blogTitle),
      decoration: InputDecoration(
        filled: true,
        hintText: trans(trans(blogThemeFont.searchProduct)),
        hintStyle: AppCss.montserratRegular14
            .textColor(appCtrl.appTheme.blogContent),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.r10),
          borderSide: BorderSide.none,
        ),
        suffix: const HSpace(Sizes.s10),
        contentPadding:
        const EdgeInsets.symmetric(horizontal: Insets.i15),
        prefixIcon: SvgPicture.asset(blogSvgAssets.search,
            color: appCtrl.appTheme.blogContent,
            fit: BoxFit.contain,
            width: 20.00)
            .paddingSymmetric(horizontal: Insets.i15),
        suffixIcon: SvgPicture.asset(blogSvgAssets.mic,
            color: appCtrl.appTheme.blogContent,
            fit: BoxFit.contain,
            width: 20.00)
            .paddingSymmetric(horizontal: Insets.i15),
        fillColor: appCtrl.appTheme.whiteColor,
      ),
    );
  }
}
