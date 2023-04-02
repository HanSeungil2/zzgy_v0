import '/../../config.dart';

class BlogDashboardController extends GetxController with GetTickerProviderStateMixin{
  List bottomList = [];
  List drawerList = [];
  TabController? con;

  List<AnimationController>? animationControllers;
  List<Animation>? animation;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex = 0;
  bool isHome = true;
  bool isBack = false;
  bool isSearch = false;
  bool isAccount = false;
  bool isNotification = false;
  bool isShimmer = false;

  //list of bottommost page
  List<Widget> widgetOptions = <Widget>[
    BlogHome(),
    BlogSearch(),
    const Text("Add Post"),
    BlogNotification(),
    BlogProfile(),
  ];

  @override
  void onReady() async {
    // TODO: implement onReady
    con = TabController(
        vsync: this,
        length: 5,
        initialIndex: isHome
            ? 0
            : isSearch
            ? 1
            : isNotification
            ? 3
            : 4)
      ..addListener(listener);
    animationControllers = List.generate(
        5,
            (i) {
          return AnimationController(
              vsync: this,
              duration: const Duration(milliseconds: 750),
              reverseDuration: const Duration(milliseconds: 350));
        });
    isShimmer = true;
    bottomList = blogAppArray.bottomList;
    drawerList = blogAppArray.drawerList;

    update();

    // TODO: implement onReady
    var data = Get.arguments ?? "";

    if (data != "") {
      isSearch = data["isSearch"];
      isAccount = data["isAccount"];
      isNotification = data["isNotification"];
      isHome = data["isHome"];
      isBack = data["isBack"];
      update();
      if (isSearch) {
        selectedIndex = 1;
      } else if (isAccount) {
        selectedIndex = 4;
      } else if (isHome) {
        selectedIndex = 0;
      } else if (isNotification) {
        selectedIndex = 3;
      } else {
        selectedIndex = 0;
      }
    }

    update();
    await Future.delayed(Durations.ms150);
    isShimmer = false;
    update();
    super.onReady();
  }

  //filter page route
  Route createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => AddPost(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
  }

  void listener() {
    if (con!.indexIsChanging) {
      animationControllers![con!.previousIndex].reverse();
    } else {
      animationControllers![con!.index].forward();
    }
    update();
  }

  @override
  void dispose() {
    super.dispose();
    con!
      ..removeListener(listener)
      ..dispose();
    for (var ac in animationControllers!) {
      ac.dispose();
    }
  }

  //back tap
  onBackTap() {
    if (isBack) {
      Get.back();
    } else {
      Get.back();
      Get.back();
    }
  }

  //bottom nav bar tap
  onBottomTap(val) async {
    selectedIndex = val;
    update();
    if (selectedIndex == 2) {
      Navigator.of(Get.context!).push(createRoute()).then((value) {
        con!.index = 0;
        update();
        Get.forceAppUpdate();
      });
    }
    await Future.delayed(Durations.ms150);
    isShimmer = true;
    update();
    await Future.delayed(Durations.ms150);
    isShimmer = false;
    update();
  }
}
