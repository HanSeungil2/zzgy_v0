import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../../../config.dart';

class LastArticleData extends StatelessWidget {
  final BlogModel? blogModel;
  const LastArticleData({Key? key,this.blogModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        FadeInImage(
            placeholder: AssetImage(blogImageAssets.logo),
            image: AssetImage(blogModel!.image!),
            fit: BoxFit.cover,
            height: Sizes.s70,
            width: Sizes.s70)
            .clipRRect(all: AppRadius.r5),
        const HSpace(Sizes.s10),
        Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(trans(blogModel!.name!),
                      style: AppCss.montserratMedium14
                          .textColor(appCtrl.appTheme.blogTitle)
                          .textHeight(1.3)),
                  const VSpace(Sizes.s10),
                  LinearPercentIndicator(
                    padding: EdgeInsets.zero,
                    lineHeight: 5.0,
                    percent: blogModel!.totalReadCompleted!,
                    barRadius: const Radius.circular(AppRadius.r40),
                    backgroundColor:
                    appCtrl.appTheme.hotelBorderColor,
                    progressColor:
                    appCtrl.appTheme.eCommerceThemeColor,
                  )
                ]))
      ],
    );
  }
}
