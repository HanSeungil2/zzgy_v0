import '/././../config.dart';

class BlogHomeController extends GetxController {
  List<BlogModel> lastReadingArticle = [];
  List<BlogModel> allCategoryWiseData = [];
  List<BlogModel> categoryWiseData = [];
  List category =[];
  int selectedCategory =1;

  @override
  void onReady() {
    // TODO: implement onReady

    lastReadingArticle = blogAppArray.lastReadingArticle.map((e) => BlogModel.fromJson(e)).toList();
    category = blogAppArray.category;
    allCategoryWiseData = blogAppArray.categoryWiseData.map((e) => BlogModel.fromJson(e)).toList();
    update();
    getSubCategory(1);
    super.onReady();
  }

  //get data category wise
  getSubCategory(id){
    categoryWiseData =[];
    for(int i=0;i<allCategoryWiseData.length;i++){
      selectedCategory = id;
      if(selectedCategory == allCategoryWiseData[i].categoryId){
        categoryWiseData.add(allCategoryWiseData[i]);
      }
    }
    update();
  }
}
