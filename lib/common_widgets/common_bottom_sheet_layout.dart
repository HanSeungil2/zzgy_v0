import '../config.dart';

class BottomSheetLayout extends StatelessWidget {
  final Widget? child;
  const BottomSheetLayout({Key? key,this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(AppRadius.r15),
              topLeft: Radius.circular(AppRadius.r15)),
        ),
        height: MediaQuery.of(context).size.height / 2,
        child: child);
  }
}
