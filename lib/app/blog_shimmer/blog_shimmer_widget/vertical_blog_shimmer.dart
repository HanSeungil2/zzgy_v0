import '/../../config.dart';

class VerticalBlogShimmer extends StatelessWidget {
  const VerticalBlogShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...blogAppArray.categoryWiseData.getRange(0, 3).map((e) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  BlogShimmer(width: Sizes.s80),
                  VSpace(Sizes.s8),
                  BlogShimmer(width: Sizes.s180),
                  VSpace(Sizes.s5),
                  BlogShimmer(width: Sizes.s50),
                  VSpace(Sizes.s15),
                  BlogShimmer(width: Sizes.s120)
                ]),
            const BlogShimmer(width: Sizes.s80, height: Sizes.s80),
          ],
        ).marginOnly(bottom: Insets.i15))
      ],

    );
  }
}
