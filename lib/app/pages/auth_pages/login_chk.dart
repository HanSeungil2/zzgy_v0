import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../config.dart';
import '../../controllers/auth_controllers/loading_controller.dart';
import '../bottom_pages/blog_dashboard/blog_dashboard.dart';
import 'getting_started/getting_started.dart';

/// 로그인 체크 후 페이지 이동 (파이어베이스)
class LoginChk extends StatelessWidget {
  final loading = Get.put(LoadingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, AsyncSnapshot<User?> user) {
              if (user.hasData) {
                return BlogDashboard();
              } else {
                return GettingStarted();
              }
            },
          ),
          Obx(
            //isLoading(obs)가 변경되면 다시 그림.
            () => Offstage(
              offstage:
                  !loading.isLoading, // isLoading이 false면 감춰~
              child: Stack(children: const <Widget>[
                //다시 stack
                Opacity(
                  //뿌옇게~
                  opacity: 0.5, //0.5만큼~
                  child: ModalBarrier(
                      dismissible: false, color: Colors.black), //클릭 못하게~
                ),
                Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Colors.blueAccent, //<-- SEE HERE
                    ),
                  )
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
