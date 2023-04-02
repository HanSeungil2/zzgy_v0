import '../../../../config.dart';

class BlogButton extends StatelessWidget {
  final String title;
  final double padding;
  final double margin;
  final double radius;
  final double? height;
  final GestureTapCallback? onTap;
  final TextStyle? style;
  final Color? color;
  final Widget? icon;
  final double? width;
  final Border? border;
  final Gradient? gradient;

  const BlogButton(
      {Key? key,
      required this.title,
      this.padding = 15,
      this.margin = 15,
      this.radius = 5,
      this.height ,
      this.onTap,
      this.style,
      this.color,
      this.icon,
      this.width,
      this.border,this.gradient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: height ?? Sizes.s45,
          width: width ?? MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: margin),
          padding: EdgeInsets.all(padding),

          decoration: BoxDecoration(
              color: color ?? appCtrl.appTheme.blogTitle,
              border: border,
            gradient: gradient,
              borderRadius: radius > 0 ? BorderRadius.circular(radius) : null),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            if (icon != null)
              Row(children: [icon ?? const HSpace(0), const HSpace(10)]),
            Text(title, textAlign: TextAlign.center,style: style)
          ])),
    );
  }
}
