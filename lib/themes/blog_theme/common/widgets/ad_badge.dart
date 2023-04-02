import '../../../../config.dart';

class AdBadge extends StatelessWidget {
  const AdBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      top: -25,
      right: -12,
      child: Transform.rotate(
        angle: radians(30),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 38,
          width: 45,
          color: appCtrl.appTheme.blogPrimary,
          child: Text(
            trans(blogThemeFont.ad),
            style: AppCss.montserratMedium10
                .textColor(appCtrl.appTheme.white),
          ).paddingOnly(left: Insets.i15, bottom: 1),
        ),
      ),
    );
  }
}
