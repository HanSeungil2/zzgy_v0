import '../../../../../../config.dart';

class BlogNotificationListCard extends StatelessWidget {
  final dynamic data;
  const BlogNotificationListCard({Key? key,this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Image.asset(data["image"],
            fit: BoxFit.cover,
            height: Sizes.s80,
            width: Sizes.s80)
            .clipRRect(all: AppRadius.r5),
        const HSpace(Sizes.s15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(trans(data["title"]),
                  style: AppCss.montserratSemiBold14
                      .textColor(data["isRead"] ?appCtrl.appTheme.blogTitle1 :appCtrl.appTheme.blogTitle).textHeight(1.3)),
              const VSpace(Sizes.s8),
              Text(trans(data["date"]),
                  style: AppCss.montserratRegular12
                      .textColor(appCtrl.appTheme.blogContentDark))
            ],
          ),
        )
      ],
    );
  }
}
