import '../../../../config.dart';

class BottomBorderTextBox extends StatelessWidget {
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String hinText;
  final InputBorder? border;
  final Color? fillColor;
  final int? maxLength;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final FormFieldValidator<String>? validator;

  const BottomBorderTextBox(
      {Key? key,
      this.controller,
      this.suffixIcon,
      this.prefixIcon,
      this.border,
      this.hinText = "Search",
      this.fillColor,
      this.maxLength,
      this.hintStyle,
      this.style,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    InputBorder inputBorder = UnderlineInputBorder(
        borderSide: BorderSide(color: appCtrl.appTheme.blogContent));

    return GetBuilder<AppController>(builder: (appCtrl) {
      return TextFormField(
        controller: controller,
        validator: validator,
        maxLength: maxLength,

        style:style ?? AppCss.latoMedium15.textColor(appCtrl.appTheme.whiteColor),
        decoration: InputDecoration(
          counterText: "",
          hintText: trans(hinText),
          hintStyle: hintStyle ??
              AppCss.rubikBold16.textColor(appCtrl.appTheme.blogTitle),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.r5),
            borderSide: BorderSide.none,
          ),
          focusedBorder: border ?? inputBorder,
          enabledBorder: border ?? inputBorder,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      );
    });
  }
}
