import '/../../config.dart';

class BlogDashboard extends StatelessWidget {
  final dashboardCtrl = Get.put(BlogDashboardController());
   BlogDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogDashboardController>(builder: (_) {
      return DirectionalityRtl(
          child: WillPopScope(
              onWillPop: () async {
                dashboardCtrl.onBackTap();
                return true;
              },
              child: Scaffold(
                  key: dashboardCtrl.scaffoldKey,
                  appBar: BlogAppBar(
                      onTap: () =>
                          dashboardCtrl.scaffoldKey.currentState!.openDrawer(),
                      selectedIndex: dashboardCtrl.selectedIndex),
                  drawer: const BlogDrawer(),
                  body: dashboardCtrl.bottomList.isNotEmpty
                      ? TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: dashboardCtrl.con,
                      children: dashboardCtrl.widgetOptions)
                      : Container(),
                  bottomNavigationBar:
                  BlogBottomNavBar(con: dashboardCtrl.con))));
    });
  }
}
