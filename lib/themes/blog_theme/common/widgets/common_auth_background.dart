import '../../../../config.dart';

class CommonAuthBackground extends StatelessWidget {
  final Widget? child;
  const CommonAuthBackground({Key? key,this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          blogImageAssets.base,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
          height:
          MediaQuery.of(context).size.height,
        ),
        child!

      ],
    ).height(MediaQuery.of(context).size.height);
  }
}
