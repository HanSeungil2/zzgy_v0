import '../../../../../../config.dart';

class BlogProfileList extends StatelessWidget {
  final List? data;
  const BlogProfileList({Key? key,this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.s300,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15),
          itemCount: data!.length,
          itemBuilder: (BuildContext context, int index) {
            return index != 6 ?  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  data![index]
                  ["icon"],
                  color: appCtrl.appTheme.blogTitle1,
                ),
                const VSpace(Sizes.s10),
                Text(
                    trans(data![index]
                    ["title"]),
                    style: AppCss.montserratSemiBold14
                        .textColor(appCtrl.appTheme.blogTitle1))
              ],
            )
                .paddingSymmetric(vertical: Insets.i15)
                .decorated(
                color:  appCtrl.appTheme.blogChooseTopicBg,
                borderRadius:
                BorderRadius.circular(AppRadius.r18)) : Container();
          }),
    );
  }
}
