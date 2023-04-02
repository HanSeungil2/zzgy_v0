import '/../../config.dart';

class BlogNotification extends StatelessWidget {
  final notificationCtrl = Get.put(BlogNotificationController());

  BlogNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<BlogDashboardController>(builder: (dashboardCtrl) {
        return GetBuilder<BlogNotificationController>(builder: (_) {
          return Scaffold(
            body: dashboardCtrl.isShimmer? const BlogNotificationShimmer(): SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //all notification and mark all as read
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Text(trans(blogThemeFont.allNotification),
                        style: AppCss.montserratSemiBold16
                            .textColor(appCtrl.appTheme.blogTitle)),
                    Text(
                      trans(blogThemeFont.markAllAsRead),
                      style: AppCss.montserratMedium14
                          .textColor(appCtrl.appTheme.blogContentDark)
                          .textDecoration(TextDecoration.underline)
                    ).inkWell(onTap:() => notificationCtrl.readAll()),
                  ]),
                  const VSpace(Sizes.s15),

                  //notification list
                  ...notificationCtrl.notificationList
                      .map((e) => BlogNotificationListCard(data: e)
                              .padding(all: Insets.i15)
                              .decorated(
                                  color: e["isRead"]
                                      ? appCtrl.appTheme.blogChooseTopicBg
                                      : appCtrl.appTheme.blogContentDark
                                          .withOpacity(.1),
                                  borderRadius: BorderRadius.circular(AppRadius.r8))
                              .marginOnly(bottom: Insets.i15))
                      .toList()
                ],
              ).marginSymmetric(vertical: Insets.i20, horizontal: Insets.i15),
            ),
          );
        });
      }
    );
  }
}
