

import '../../../config.dart';

class BlogNotificationShimmer extends StatelessWidget {
  const BlogNotificationShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: appCtrl.appTheme.darkGray.withOpacity(.3),
        highlightColor: appCtrl.appTheme.darkGray.withOpacity(.1),
        child: SingleChildScrollView(
            child:
              Column(
               children: [
                 ...blogAppArray.categoryWiseData.getRange(0, 3).map((e) => Row(

                   children: [
                     const BlogShimmer(width: Sizes.s80, height: Sizes.s80),
                     const HSpace(Sizes.s10),
                     Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: const [
                           BlogShimmer(width: Sizes.s120),
                           VSpace(Sizes.s8),
                           BlogShimmer(width: Sizes.s100),
                           VSpace(Sizes.s5),
                           BlogShimmer(width: Sizes.s50),
                         ]),

                   ],
                 ).marginOnly(bottom: Insets.i15))
               ],

             ).marginSymmetric(horizontal: Insets.i15, vertical: Insets.i15)));
  }
}
