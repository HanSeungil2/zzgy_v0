import 'package:flutter/cupertino.dart';
import '/../../config.dart';

class AddPost extends StatelessWidget {
  final addPostCtrl = Get.put(AddPostController());

  AddPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddPostController>(builder: (_) {
      return  GetBuilder<BlogDashboardController>(builder: (dashboardCtrl) {
          return WillPopScope(
            onWillPop: ()async{

              dashboardCtrl.selectedIndex = 0;
              dashboardCtrl.isHome = true;
              addPostCtrl.txtTitle.text = "";
              addPostCtrl.txtContent.text = "";
              dashboardCtrl.update();
              Get.back();
              return true;
            },
            child: Scaffold(
                appBar: AppBar(
                    backgroundColor: appCtrl.appTheme.whiteColor,
                    elevation: 0,
                    title: Text(trans(blogThemeFont.addPost),
                        style: AppCss.montserratMedium16
                            .textColor(appCtrl.appTheme.blogTitle)),
                    automaticallyImplyLeading: false,
                    actions: [
                      Icon(CupertinoIcons.multiply,
                          color: appCtrl.appTheme.blogTitle)
                          .marginSymmetric(horizontal: Insets.i15)
                          .inkWell(onTap: () {
                        dashboardCtrl.selectedIndex = 0;
                        dashboardCtrl.isHome = true;
                        addPostCtrl.txtTitle.text = "";
                        addPostCtrl.txtContent.text = "";
                        dashboardCtrl.update();
                        Get.back();
                      })
                    ]),
                body: Stack(alignment: Alignment.centerRight, children: [
                  //background image
                  Image.asset(blogImageAssets.bg, height: Sizes.s200),

                  //title and content text box
                  AddPostTextBox(
                          txtContent: addPostCtrl.txtContent,
                          txtTitle: addPostCtrl.txtTitle)
                      .marginSymmetric(horizontal: Insets.i15)
                      .height(MediaQuery.of(context).size.height),

                  //bottom layout
                  const AddPostBottomLayout()
                ])),
          );
        }
      );
    });
  }
}
