import '../config.dart';

class LogoLayout extends StatelessWidget {
  final String? logo, title;
  final Color? color;
  final bool isCenter;

  const LogoLayout(
      {Key? key, this.logo, this.title, this.color, this.isCenter = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isCenter ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        Image.asset(logo!, height: Sizes.s24),
        const HSpace(Sizes.s2),
        Text(trans(title!), style: AppCss.ubuntuMedium20.textColor(color!))
      ],
    ).inkWell(onTap: () => Get.offAllNamed(routeName.blogDashboard));
  }
}
