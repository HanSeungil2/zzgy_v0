

import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../config.dart';
import '../../../common/widgets/grocery_button.dart';

class BlogDrawer extends StatelessWidget {
  const BlogDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogDashboardController>(
      builder: (dashboardCtrl) {
        return Drawer(
            backgroundColor: appCtrl.appTheme.whiteColor,
            child: Padding(
                padding: const EdgeInsets.only(top: Insets.i15),
                child: ListView(
                  children: <Widget>[
                    //Drawer header
                   const BlogDrawerUser().marginSymmetric(horizontal: Insets.i15),
                    const VSpace(Sizes.s30),

                    //drawer list
                    ...dashboardCtrl.drawerList.asMap().entries.map((e) {
                      return ListTile(
                        minVerticalPadding: 0,
                        dense: true,
                        leading: SvgPicture.asset(e.value["icon"],
                            height: Sizes.s15,color: e.key ==6 ? appCtrl.appTheme.blogPrimary: appCtrl.appTheme.blogTitle),
                        title: Text(trans(e.value["title"]),
                            style: AppCss.montserratMedium14
                                .textColor(appCtrl.appTheme.blogTitle)),
                        onTap: () {
                          if (e.key == 6) {
                            Get.offAllNamed(routeName.blogDashboard);
                          }
                        },
                      );
                    }).toList(),
                    const VSpace(Sizes.s30),
                    GroceryCustomButton(
                        onTap: () async => await FirebaseAuth.instance.signOut(),
                        title: trans(blogThemeFont.logout),
                        color: appCtrl.appTheme.whiteColor,
                        border: Border.all(color: appCtrl.appTheme.blogPrimary),
                        style: AppCss.robotoMedium14
                            .textColor(appCtrl.appTheme.blogTitle)),
                    const VSpace(Sizes.s30),
                  ],
                )));
      }
    );
  }
}
