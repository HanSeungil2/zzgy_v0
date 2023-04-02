import '../../../../config.dart';

class UserImage extends StatelessWidget {
  final String? image;
  const UserImage({Key? key,this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: Sizes.s35,
        width: Sizes.s35,
        margin:
        const EdgeInsets.symmetric(horizontal: Insets.i15),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(image ??blogImageAssets.user))));
  }
}
