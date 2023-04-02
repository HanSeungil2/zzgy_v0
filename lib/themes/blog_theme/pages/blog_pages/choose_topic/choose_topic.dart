import '/../../config.dart';

class ChooseTopic extends StatelessWidget {
  final chooseTopicCtrl = Get.put(ChooseTopicController());

  ChooseTopic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChooseTopicController>(builder: (_) {
      return DirectionalityRtl(
        child: Scaffold(
          backgroundColor: appCtrl.appTheme.whiteColor,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: appCtrl.appTheme.whiteColor,
            elevation: 0,
          ),
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //choose your topic title
                    Text(trans(blogThemeFont.chooseYourTopic),
                            style: AppCss.robotoSemiBold35
                                .textColor(appCtrl.appTheme.blogTitle))
                        .marginSymmetric(horizontal: Insets.i15),
                    const VSpace(Sizes.s15),

                   //topic list
                   const TopicGrid()
                        .marginSymmetric(
                            horizontal: Insets.i15, vertical: Insets.i12)
                  ],
                ).marginOnly(bottom: Insets.i75),
              ),

              //next button
              BlogButton(
                  title: trans(blogThemeFont.next),
                  radius: AppRadius.r18,
                  onTap: ()=>Get.toNamed(routeName.blogDashboard),
                  style:
                      AppCss.montserratMedium18.textColor(appCtrl.appTheme.whiteColor)).marginOnly(bottom: Insets.i15).backgroundColor(appCtrl.appTheme.whiteColor)
            ],
          ),
        ),
      );
    });
  }
}
