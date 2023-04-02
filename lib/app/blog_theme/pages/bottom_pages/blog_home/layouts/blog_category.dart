import '../../../../../../config.dart';

class BlogCategory extends StatelessWidget {
  const BlogCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<BlogHomeController>(
      builder: (homeCtrl) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: homeCtrl.category
                .asMap()
                .entries
                .map((e) => Text(trans(e.value['title']),
                style: AppCss.montserratRegular14
                    .textColor(
                    homeCtrl.selectedCategory == e.value["id"]
                        ? appCtrl.appTheme.whiteColor
                        : appCtrl.appTheme.blogTitle)
                    .textHeight(1.3))
                .paddingSymmetric(
                horizontal: Insets.i22, vertical: Insets.i12)
                .decorated(
                color: homeCtrl.selectedCategory == e.value["id"]
                    ? appCtrl.appTheme.blogTitle
                    : appCtrl.appTheme.mainThemeBgColor,
                borderRadius: BorderRadius.circular(AppRadius.r30))
                .marginOnly(right: Insets.i10)
                .inkWell(
                onTap: () =>
                    homeCtrl.getSubCategory(e.value["id"])))
                .toList(),
          ),
        );
      }
    );
  }
}
