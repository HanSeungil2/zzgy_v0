
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../config.dart';
import '../../../common/widgets/grocery_button.dart';

class BlogProfile extends StatelessWidget {
  final profileCtrl = Get.put(BlogProfileController());

  BlogProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogProfileController>(builder: (_) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Drawer header
              const BlogDrawerUser().marginSymmetric(horizontal: Insets.i15),
              const VSpace(Sizes.s15),
              //followers
              FollowersLayout(data: profileCtrl.profileFollowers),
              const VSpace(Sizes.s40),

              //profile list
              BlogProfileList(data: profileCtrl.drawerList)
                  .marginSymmetric(horizontal: Insets.i15),

              //logout button
              GroceryCustomButton(
                onTap: () async => await FirebaseAuth.instance.signOut(),
                  title: trans(blogThemeFont.logout),
                  color: appCtrl.appTheme.whiteColor,
                  border: Border.all(color: appCtrl.appTheme.nftThemeColor),
                  style: AppCss.robotoMedium14
                      .textColor(appCtrl.appTheme.blogTitle)),
              const VSpace(Sizes.s30),
            ],
          ),
        ),
      );
    });
  }
}
