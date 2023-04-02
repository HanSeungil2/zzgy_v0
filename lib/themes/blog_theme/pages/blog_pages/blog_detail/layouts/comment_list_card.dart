import '../../../../../../config.dart';

class CommentListCard extends StatelessWidget {
  final Comments? comments;
  const CommentListCard({Key? key,this.comments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            height: Sizes.s45,
            width: Sizes.s45,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image:
                    AssetImage(comments!.image!)))),
        const HSpace(Sizes.s10),
        Expanded(
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Text(trans(comments!.name!),
                  style: AppCss.montserratMedium14
                      .textColor(
                      appCtrl.appTheme.blogTitle)),
              const VSpace(Sizes.s8),
              Text(trans(comments!.comment!),
                  style: AppCss.montserratRegular14
                      .textColor(appCtrl
                      .appTheme.blogContentDark)
                      .textHeight(1.5)),
              const VSpace(Sizes.s15),
              BlogDateTime(
                  date: comments!.replyTime,
                  time: trans(blogThemeFont.reply)),
              const VSpace(Sizes.s20),
              if(comments!.reply != null)
                ...comments!.reply!
                    .asMap()
                    .entries
                    .map((e) => CommentListCard(comments: e.value,))
                    .toList()
            ],
          ),
        )
      ],
    ).marginOnly(bottom: Insets.i5);
  }
}
