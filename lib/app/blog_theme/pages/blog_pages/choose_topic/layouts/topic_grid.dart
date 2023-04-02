import '../../../../../../config.dart';

class TopicGrid extends StatelessWidget {
  const TopicGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<ChooseTopicController>(
      builder: (chooseTopicCtrl) {
        return GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.7,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15),
            itemCount: chooseTopicCtrl.chooseTopicList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    chooseTopicCtrl.chooseTopicList[index]
                    ["icon"],
                    color: chooseTopicCtrl.selectedTopic
                        .contains(chooseTopicCtrl
                        .chooseTopicList[index]
                    ["title"]) ? appCtrl.appTheme.whiteColor : appCtrl.appTheme.blogTitle1,
                  ),
                  const VSpace(Sizes.s10),
                  Text(
                      trans(chooseTopicCtrl.chooseTopicList[index]
                      ["title"]),
                      style: AppCss.montserratMedium14
                          .textColor( chooseTopicCtrl.selectedTopic
                          .contains(chooseTopicCtrl
                          .chooseTopicList[index]
                      ["title"]) ? appCtrl.appTheme.whiteColor : appCtrl.appTheme.blogTitle1))
                ],
              )
                  .paddingSymmetric(vertical: Insets.i15)
                  .decorated(
                  color: chooseTopicCtrl.selectedTopic
                      .contains(chooseTopicCtrl
                      .chooseTopicList[index]
                  ["title"])
                      ? appCtrl.appTheme.blogPrimary
                      : appCtrl.appTheme.blogChooseTopicBg,
                  borderRadius:
                  BorderRadius.circular(AppRadius.r18))
                  .inkWell(
                  onTap: () => chooseTopicCtrl.selectTop(
                      chooseTopicCtrl
                          .chooseTopicList[index]));
            });
      }
    );
  }
}
