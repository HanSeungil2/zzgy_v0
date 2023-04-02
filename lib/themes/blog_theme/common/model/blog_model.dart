class BlogModel {
  String? name;
  String? image;
  double? totalReadCompleted;
  String? blogBy;
  String? type;
  String? date;
  bool? isAdd;
  int? categoryId;

  BlogModel(
      {this.name,
        this.image,
        this.totalReadCompleted,
        this.blogBy,
        this.type,
        this.date,
        this.isAdd,
        this.categoryId});

  BlogModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    totalReadCompleted = json['totalReadCompleted'];
    blogBy = json['blogBy'];
    type = json['type'];
    date = json['date'];
    isAdd = json['isAdd'];
    categoryId = json['categoryId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['image'] = image;
    data['totalReadCompleted'] = totalReadCompleted;
    data['blogBy'] = blogBy;
    data['type'] = type;
    data['date'] = date;
    data['isAdd'] = isAdd;
    data['categoryId'] = categoryId;
    return data;
  }
}