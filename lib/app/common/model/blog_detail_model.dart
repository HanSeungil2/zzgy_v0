class BlogDetailModel {
  String? image;
  String? name;
  String? userName;
  String? blogTitle;
  String? date;
  String? readTime;
  List<String>? blogDes;
  List<Comments>? comments;

  BlogDetailModel(
      {this.image,
        this.name,
        this.userName,
        this.blogTitle,
        this.date,
        this.readTime,
        this.blogDes,
        this.comments});

  BlogDetailModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    userName = json['userName'];
    blogTitle = json['blogTitle'];
    date = json['date'];
    readTime = json['readTime'];
    blogDes = json['blogDes'].cast<String>();
    if (json['comments'] != null) {
      comments = <Comments>[];
      json['comments'].forEach((v) {
        comments!.add(Comments.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['userName'] = userName;
    data['blogTitle'] = blogTitle;
    data['date'] = date;
    data['readTime'] = readTime;
    data['blogDes'] = blogDes;
    if (comments != null) {
      data['comments'] = comments!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Comments {
  String? image;
  String? name;
  String? comment;
  String? replyTime;
  List<Comments>? reply;

  Comments({this.image, this.name, this.comment, this.replyTime, this.reply});

  Comments.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    comment = json['comment'];
    replyTime = json['replyTime'];
    if (json['reply'] != null) {
      reply = <Comments>[];
      json['reply'].forEach((v) {
        reply!.add(Comments.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['comment'] = comment;
    data['replyTime'] = replyTime;
    if (reply != null) {
      data['reply'] = reply!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Reply {
  String? image;
  String? name;
  String? comment;
  String? replyTime;

  Reply({this.image, this.name, this.comment, this.replyTime});

  Reply.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    comment = json['comment'];
    replyTime = json['replyTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['comment'] = comment;
    data['replyTime'] = replyTime;
    return data;
  }
}