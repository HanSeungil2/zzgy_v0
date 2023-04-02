import '../../../../../../config.dart';

class FollowersLayout extends StatelessWidget {
  final List? data;
  const FollowersLayout({Key? key,this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: Sizes.s40,
        width: MediaQuery.of(context).size.width,
        child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => VerticalDivider(
                color: appCtrl.appTheme.cabTabBGColor2),
            itemCount: data!.length,
            itemBuilder: (context, index) => Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                      data![index]["count"]
                          .toString(),
                      style: AppCss.montserratSemiBold16
                          .textColor(appCtrl.appTheme.blogTitle)),
                  const VSpace(Sizes.s8),
                  Text(
                      trans(data![index]
                      ["title"]
                          .toString()),
                      style: AppCss.montserratMedium16
                          .textColor(appCtrl.appTheme.blogContent))
                ]).marginSymmetric(horizontal: index ==1 ? Insets.i28 : Insets.i15)));
  }
}
