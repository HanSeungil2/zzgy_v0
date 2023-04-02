import '../../../../../../config.dart';

class BlogSearchTextBoxLayout extends StatelessWidget {
  final GestureTapCallback? onTap;
  final TextEditingController? controller;

  const BlogSearchTextBoxLayout({Key? key, this.onTap, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        backgroundColor: appCtrl.appTheme.whiteColor,
        toolbarHeight: Sizes.s70,
        title: Container(
          margin: EdgeInsets.only(
              right:
                  appCtrl.isRTL || appCtrl.languageVal == "ar" ? 0 : Insets.i15,
              left: appCtrl.isRTL || appCtrl.languageVal == "ar"
                  ? Insets.i15
                  : 0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: appCtrl.appTheme.foodShadowColor,
                blurRadius: 6,
                offset: const Offset(2, 3),
              ),
            ],
          ),
          child: BlogSearchTextForm(controller: controller),
        ),
        leading:
            SvgPicture.asset(blogSvgAssets.menu, fit: BoxFit.contain, width: 20.00)
                .inkWell(onTap: onTap)
                .paddingSymmetric(horizontal: Insets.i15));
  }
}
