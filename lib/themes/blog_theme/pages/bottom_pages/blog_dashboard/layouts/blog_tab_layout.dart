import 'dart:math';

import '../../../../../../config.dart';

class BlogTabLayout extends StatelessWidget {
  final int? index;
  final dynamic data;
  const BlogTabLayout({Key? key,this.index,this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogDashboardController>(
        builder: (dashboardCtrl) {
        return AnimatedBuilder(
          animation: dashboardCtrl.animationControllers![index!],
          builder: (BuildContext context, Widget? child) {
            final child = Tab(
              icon: SvgPicture.asset(data['icon'].toString(),
                  height: Sizes.s20,
                  width: Sizes.s20,
                  fit: BoxFit.fill,

                  color: dashboardCtrl.selectedIndex == index
                      ? appCtrl.appTheme.blogTitle
                      : appCtrl.appTheme.financialLightGray),
              text: trans(data['title'].toString()),
              iconMargin: const EdgeInsets.only(bottom: Insets.i5),
            ).width(Sizes.s70);
            final value =
                dashboardCtrl.animationControllers![index!].value;
            if (dashboardCtrl.animationControllers![index!].status ==
                AnimationStatus.forward) {
              final angle = sin(4 * pi * value) * pi * 0.2;
              return Transform.rotate(angle: angle, child: child);
            } else {
              final dy = sin(2 * pi * value) * 0.2;
              return FractionalTranslation(
                  translation: Offset(0, dy), child: child);
            }
          },
        );
      }
    );
  }
}
