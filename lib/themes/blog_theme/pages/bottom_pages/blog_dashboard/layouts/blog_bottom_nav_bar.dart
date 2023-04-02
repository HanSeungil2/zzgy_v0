import '../../../../../../config.dart';

class BlogBottomNavBar extends StatelessWidget {
  final TabController? con;

  const BlogBottomNavBar({Key? key, this.con}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogDashboardController>(builder: (dashboardCtrl) {
      return dashboardCtrl.bottomList.isNotEmpty
          ? DefaultTabController(
              length: dashboardCtrl.bottomList.length,
              child: BlogDashboardWidget().tabBorderLayout(
                  child: Container(
                      height: Sizes.s60,
                      margin: const EdgeInsets.all(1),
                      color: appCtrl.appTheme.whiteColor,
                      child: TabBar(
                          controller: con,
                          physics: const NeverScrollableScrollPhysics(),
                          isScrollable: false,
                          padding: EdgeInsets.zero,
                          indicatorPadding: EdgeInsets.zero,
                          labelPadding: EdgeInsets.zero,
                          overlayColor: MaterialStateProperty.all(
                              appCtrl.appTheme.whiteColor),
                          onTap: (val) => dashboardCtrl.onBottomTap(val),
                          indicator: BlogDashboardWidget().materialIndicator(),
                          labelStyle: AppCss.montserratRegular12
                              .textColor(appCtrl.appTheme.blogTitle),
                          labelColor: appCtrl.appTheme.blogTitle,
                          unselectedLabelStyle: AppCss.montserratRegular11
                              .textColor(appCtrl.appTheme.financialLightGray),
                          tabs: dashboardCtrl.bottomList.isNotEmpty
                              ? dashboardCtrl.bottomList
                                  .asMap()
                                  .entries
                                  .map((e) {
                                  return BlogTabLayout(
                                      index: e.key, data: e.value);
                                }).toList()
                              : []))),
            )
          : Container();
    });
  }
}
