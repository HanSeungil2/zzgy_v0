
import '../../config.dart';

//app file
import 'route_name.dart';
import 'screen_list.dart';

RouteName _routeName = RouteName();

class AppRoute {
  final List<GetPage> getPages = [



    //blog route
    GetPage(name: _routeName.blogSplash, page: () =>  BlogSplash()),
    GetPage(name: _routeName.blogOnboard, page: () =>  BlogOnboard()),
    GetPage(name: _routeName.gettingStarted, page: () => const GettingStarted()),
    GetPage(name: _routeName.blogLogin, page: () => const BlogLogin()),
    GetPage(name: _routeName.blogSignup, page: () => const BlogSignup()),
    GetPage(name: _routeName.chooseTopic, page: () =>  ChooseTopic()),
    GetPage(name: _routeName.blogDashboard, page: () =>  BlogDashboard()),
    GetPage(name: _routeName.blogList, page: () =>  BlogList()),
    GetPage(name: _routeName.blogDetail, page: () => const BlogDetail()),
    GetPage(name: _routeName.addPost, page: () =>  AddPost()),

  ];
}
