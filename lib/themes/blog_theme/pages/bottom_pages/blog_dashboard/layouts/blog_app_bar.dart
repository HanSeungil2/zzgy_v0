


import '../../../../../../common_widgets/logo_layout.dart';
import '../../../../../../config.dart';

class BlogAppBar extends StatelessWidget with PreferredSizeWidget {
  final GestureTapCallback? onTap;
  final bool isMenu;
  final int? selectedIndex;

  const BlogAppBar(
      {Key? key, this.onTap, this.isMenu = true, this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return selectedIndex != 1
        ? AppBar(
            elevation: 0,
            titleSpacing: 0,
            automaticallyImplyLeading: false,
            backgroundColor: appCtrl.appTheme.whiteColor,
            title: selectedIndex != 1
                ? LogoLayout(
                    title: trans(commonFonts.ultikit),
                    logo: blogImageAssets.logo,
                    color: appCtrl.appTheme.eCommerceTitleColor)
                : Container(),
            leading: isMenu
                ? SvgPicture.asset(blogSvgAssets.menu,
                        fit: BoxFit.contain, width: 20.00)
                    .inkWell(onTap: onTap)
                    .paddingSymmetric(horizontal: Insets.i15)
                : Icon(Icons.arrow_back_ios_sharp,
                        color: appCtrl.appTheme.blogTitle, size: Sizes.s18)
                    .inkWell(onTap: () => Get.back()),
            actions: [
                if (selectedIndex != 1)
                 const UserImage()
              ])
        : BlogSearchTextBoxLayout(onTap: onTap,);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
