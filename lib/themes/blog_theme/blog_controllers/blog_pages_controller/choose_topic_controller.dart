import '/../../config.dart';

class ChooseTopicController extends GetxController {
  List chooseTopicList = [];
  List selectedTopic = [];

  @override
  void onReady() {
    // TODO: implement onReady
    chooseTopicList = blogAppArray.blogTypeList;
    update();
    super.onReady();
  }

  selectTop(value) {
    if (selectedTopic.contains(value["title"])) {
      selectedTopic
          .removeWhere((element) => element == value["title"]);
    } else {
      selectedTopic.add(value["title"]);
    }
    update();
  }
}
