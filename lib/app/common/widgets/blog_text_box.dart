import '../../../../config.dart';

  class BlogTextBox extends StatelessWidget {
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String hinText;
  final InputBorder? border;
  final Color? fillColor;
  final FormFieldValidator<String>? validator;
  final bool filled;

  const BlogTextBox(
      {Key? key,
        this.controller,
        this.suffixIcon,
        this.prefixIcon,
        this.border,
        this.hinText = "Search",this.fillColor,this.validator,this.filled = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    InputBorder   inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.r18),
      borderSide: BorderSide.none,
    );
    return GetBuilder<AppController>(builder: (appCtrl) {
      return TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor ??appCtrl.appTheme.whiteColor,
          hintText: trans(hinText),
          hintStyle:
          AppCss.montserratRegular14.textColor(appCtrl.appTheme.blogContent),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.r18),
            borderSide: BorderSide.none,
          ),
          focusedBorder:border ??inputBorder,
          enabledBorder: border ??inputBorder,
          suffix: const HSpace(Sizes.s10),
          contentPadding: const EdgeInsets.symmetric(
              horizontal: Insets.i20, vertical: Insets.i10),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      );
    });
  }
}
