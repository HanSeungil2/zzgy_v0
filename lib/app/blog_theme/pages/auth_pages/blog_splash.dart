import '../../../../../config.dart';

class BlogSplash extends StatelessWidget {
  final splashCtrl = Get.put(BlogSplashController());
   BlogSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogSplashController>(builder: (context) {
      return WillPopScope(
        onWillPop: ()async{
          splashCtrl.timer!.cancel();
          splashCtrl.update();
          return true;
        },
        child: Scaffold(
          backgroundColor: appCtrl.appTheme.whiteColor,
          body: Center(
            child: Image.asset(blogGifAssets.splashLogo,height: Sizes.s80,),
          ),
        ),
      );
    });
  }
}
