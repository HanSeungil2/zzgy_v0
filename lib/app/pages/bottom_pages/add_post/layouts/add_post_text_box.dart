import '../../../../../../config.dart';
import '../../../../widget/bottom_border_text_box.dart';

class AddPostTextBox extends StatelessWidget {
  final TextEditingController? txtTitle,txtContent;
  const AddPostTextBox({Key? key,this.txtContent,this.txtTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BottomBorderTextBox(
              controller: txtTitle,
                hinText: trans(blogThemeFont.title),
                hintStyle: AppCss.montserratMedium16
                    .textColor(appCtrl.appTheme.blogContent),
                style: AppCss.montserratMedium16
                    .textColor(appCtrl.appTheme.blogTitle),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: appCtrl.appTheme.blogChatTextBorder))),
            const VSpace(Sizes.s10),
            BottomBorderTextBox(
              controller: txtContent,
                hinText: trans(blogThemeFont.contentTypeHere),
                maxLength: 500,
                style: AppCss.montserratMedium16
                    .textColor(appCtrl.appTheme.blogTitle),
                hintStyle: AppCss.montserratMedium16
                    .textColor(appCtrl.appTheme.blogContent),
                border: const UnderlineInputBorder(
                  borderSide: BorderSide.none,
                )),
          ],
        ));
  }
}
