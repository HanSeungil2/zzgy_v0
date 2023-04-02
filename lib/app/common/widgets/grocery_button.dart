import '../../../../config.dart';
import '../../../../utilities/responsive_layout.dart';

class GroceryCustomButton extends StatelessWidget {
  final String title;
  final double padding;
  final double margin;
  final double radius;
  final double height;
  final double fontSize;
  final GestureTapCallback? onTap;
  final TextStyle? style;
  final Color? color;
  final Color? fontColor;
  final Widget? icon;
  final double? width;
  final Border? border;
  final FontWeight? fontWeight;

  const GroceryCustomButton(
      {Key? key,
      required this.title,
      this.padding = 15,
      this.margin = 15,
      this.radius = 5,
      this.height = 45,
      this.fontSize = FontSizes.f14,
      this.onTap,
      this.style,
      this.color,
      this.fontColor,
      this.icon,
      this.width,
      this.border,
      this.fontWeight = FontWeight.w700})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: width ?? MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: margin),
          height: ResponsiveWidget.isSmallScreen(context) ? Sizes.s50 : height,
          decoration: BoxDecoration(
              color: color ?? appCtrl.appTheme.groceryThemeColor,
              border: border,
              borderRadius: radius > 0 ? BorderRadius.circular(radius) : null),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            if (icon != null)
              Row(children: [icon ?? const HSpace(0), const HSpace(3)]),
            Text(title, textAlign: TextAlign.center,style:style,)
          ])),
    );
  }
}
