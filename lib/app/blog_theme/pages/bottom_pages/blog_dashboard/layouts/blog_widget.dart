import '../../../../../../config.dart';
import '../../blog_bottom_nav_bar/material_indicator.dart';

class BlogDashboardWidget{

  //indicator
  MaterialIndicator materialIndicator() =>  MaterialIndicator(
      height: 3,
      strokeWidth: 3,
      color: appCtrl.appTheme.blogTitle,
      horizontalPadding: Insets.i15,
      topLeftRadius: 0,
      topRightRadius: 0,
      bottomLeftRadius: 0,
      bottomRightRadius: 0,
      tabPosition: TabPosition.top);

  //tab border layout
  Widget tabBorderLayout({Widget? child}) => Container(
    height: Sizes.s60,
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              appCtrl.appTheme.blogLinearBorder.withOpacity(.15),
              appCtrl.appTheme.cabBorderColor.withOpacity(.10),
            ])),
    child: child,
  );
}