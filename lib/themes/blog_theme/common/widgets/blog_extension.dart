import '/../../config.dart';

extension BlogExtension on Widget {
  //last article extension
  Widget lastArticleExtension() {
    return Container(child: this).paddingAll( Insets.i10).decorated(
        color: appCtrl.appTheme.whiteColor,
        borderRadius: BorderRadius.circular(AppRadius.r8),
        boxShadow: [
          BoxShadow(
              color: appCtrl.appTheme.foodShadowColor,
              blurRadius: 10.0,
              offset: const Offset(0.0, 0.75))
        ]).marginOnly(bottom: Insets.i15);
  }
}
