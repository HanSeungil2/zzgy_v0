import '../../../../config.dart';

class BlogDateTime extends StatelessWidget {
  final String? date,time;
  const BlogDateTime({Key? key,this.date,this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(trans(date!),
          style: AppCss.montserratRegular12
              .textColor(appCtrl.appTheme.blogContent)),
      Icon(Icons.circle,
          color: appCtrl.appTheme.blogContent, size: Sizes.s5)
          .marginSymmetric(horizontal: Insets.i10),
      Text(trans(time!),
          style: AppCss.montserratRegular12
              .textColor(appCtrl.appTheme.blogContent))
    ]);
  }
}
