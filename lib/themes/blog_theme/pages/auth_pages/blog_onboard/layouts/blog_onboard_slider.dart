
import '../../../../../../config.dart';

class BlogOnboardSlider extends StatelessWidget {
  const BlogOnboardSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogOnboardController>(
      builder: (onboardCtrl) {
        return CarouselSlider(
          options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              autoPlay: true,
              onPageChanged: (val, _) {
                onboardCtrl.currentIndex = val;
                onboardCtrl.update();
              }),
          items: onboardCtrl.onboardList
              .map((item) => Stack(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    item["image"],
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                    height:
                    MediaQuery.of(context).size.height,
                  ),
                  Image.asset(blogImageAssets.overlay,
                      width:
                      MediaQuery.of(context).size.width,
                      fit: BoxFit.cover),
                ]
              )
            ]
          ))
              .toList(),
        );
      }
    );
  }
}
