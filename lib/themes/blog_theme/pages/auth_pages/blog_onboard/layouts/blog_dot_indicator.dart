import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../../config.dart';


class BlogDotIndicator extends StatelessWidget {
  final int? currentIndex;
  const BlogDotIndicator({Key? key,this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AnimatedSmoothIndicator(
          activeIndex: currentIndex!,
          count: 3,
          axisDirection: Axis.horizontal,
          effect: ExpandingDotsEffect(
              activeDotColor: appCtrl.appTheme.blogTitle1,
              dotHeight: 6,
              dotColor: appCtrl.appTheme.financialLightGray,
              dotWidth: Sizes.s20,
              spacing: 10
          ),
        ),
        Icon(Icons.arrow_forward_ios_sharp,
            color: appCtrl.appTheme.whiteColor,
            size: Sizes.s18)
            .paddingAll(Insets.i18)
            .decorated(
            color: appCtrl.appTheme.blogTitle,
            shape: BoxShape.circle).inkWell(onTap: ()=>Get.toNamed(routeName.gettingStarted))
      ],
    );
  }
}
