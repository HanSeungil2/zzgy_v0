import '/../../config.dart';

class BlogAppArray {
  //onboard list
  var onBoardList = [
    {
      "title": "writeBlog",
      "desc": "blogOnBoardDesc",
      "image": blogImageAssets.base
    },
    {
      "title": "writeBlog",
      "desc": "blogOnBoardDesc1",
      "image": blogImageAssets.base
    },
    {
      "title": "writeBlog",
      "desc": "blogOnBoardDesc2",
      "image": blogImageAssets.base
    }
  ];

  var blogTypeList = [
    {"title": "business", "icon": blogSvgAssets.blog1},
    {"title": "sports", "icon": blogSvgAssets.blog2},
    {"title": "politics", "icon": blogSvgAssets.blog3},
    {"title": "science", "icon": blogSvgAssets.blog4},
    {"title": "artFusion", "icon": blogSvgAssets.blog5},
    {"title": "books", "icon": blogSvgAssets.blog6},
    {"title": "fashion", "icon": blogSvgAssets.blog7},
    {"title": "electronics", "icon": blogSvgAssets.blog8},
    {"title": "travel", "icon": blogSvgAssets.blog9},
    {"title": "food", "icon": blogSvgAssets.blog10}
  ];

  //bottom list
  var bottomList = [
    {"title": "home", "icon": blogSvgAssets.home},
    {"title": "search", "icon": blogSvgAssets.search},
    {"title": "addPost", "icon": blogSvgAssets.add},
    {"title": "notification", "icon": blogSvgAssets.notification},
    {"title": "profile", "icon": blogSvgAssets.user},
  ];

  //drawer list
  var drawerList = [
    {"title": "editProfile", "icon": blogSvgAssets.user},
    {"title": "notification", "icon": blogSvgAssets.notification},
    {"title": "security", "icon": blogSvgAssets.user},
    {"title": "language", "icon": blogSvgAssets.blog4},
    {"title": "privacy", "icon": blogSvgAssets.privacy},
    {"title": "settings", "icon": blogSvgAssets.setting},
    {"title": "landing", "icon": blogSvgAssets.logo}
  ];

  //profile followers
  var profileFollowers = [
    {"title": "followers", "count": 25},
    {"title": "posts", "count": 10},
    {"title": "following", "count": 50}
  ];

  //last reading article
  var lastReadingArticle = [
    {
      "name": "blog1",
      "image": blogImageAssets.blog2,
      "totalReadCompleted": 0.3,
      "blogBy": "markJeckno",
      "type": "uXUIDesign",
      "date": "aug202021",
      "isAdd": false,
      "categoryId": 1
    },
    {
      "name": "blog1",
      "image": blogImageAssets.blog3,
      "totalReadCompleted": 0.2,
      "blogBy": "markJeckno",
      "type": "uXUIDesign",
      "date": "aug202021",
      "isAdd": false,
      "categoryId": 1
    }
  ];

  //category
  var category = [
    {"id": 1, "title": "trending"},
    {"id": 2, "title": "latestNews"},
    {"id": 3, "title": "business"}
  ];

  //category wise data
  var categoryWiseData = [
    {
      "name": "blog1",
      "image": blogImageAssets.blog4,
      "totalReadCompleted": 0.1,
      "blogBy": "markJeckno",
      "type": "uXUIDesign",
      "date": "aug202021",
      "isAdd": false,
      "categoryId": 1
    },
    {
      "name": "blog1",
      "image": blogImageAssets.blog5,
      "totalReadCompleted": 0.1,
      "blogBy": "markJeckno",
      "type": "uXUIDesign",
      "date": "aug202021",
      "isAdd": false,
      "categoryId": 1
    },
    {
      "name": "blog1",
      "image": blogImageAssets.blog6,
      "totalReadCompleted": 0.1,
      "blogBy": "markJeckno",
      "type": "uXUIDesign",
      "date": "aug202021",
      "isAdd": false,
      "categoryId": 1
    },
    {
      "name": "blog1",
      "image": blogImageAssets.blog5,
      "totalReadCompleted": 0.1,
      "blogBy": "markJeckno",
      "type": "uXUIDesign",
      "date": "aug202021",
      "isAdd": false,
      "categoryId": 2
    },
    {
      "name": "blog1",
      "image": blogImageAssets.blog6,
      "totalReadCompleted": 0.1,
      "blogBy": "markJeckno",
      "type": "uXUIDesign",
      "date": "aug202021",
      "isAdd": false,
      "categoryId": 2
    },
    {
      "name": "blog1",
      "image": blogImageAssets.blog6,
      "totalReadCompleted": 0.1,
      "blogBy": "markJeckno",
      "type": "uXUIDesign",
      "date": "aug202021",
      "isAdd": false,
      "categoryId": 3
    }
  ];

  //blog list data
  var blogListData = [
    {
      "name": "blog1",
      "image": blogImageAssets.blog4,
      "totalReadCompleted": 0.1,
      "blogBy": "markJeckno",
      "type": "uXUIDesign",
      "date": "aug202021",
      "isAdd": true,
      "categoryId": 1
    },
    {
      "name": "blog2",
      "image": blogImageAssets.blog5,
      "totalReadCompleted": 0.1,
      "blogBy": "markJeckno",
      "type": "uXUIDesign",
      "date": "aug202021",
      "isAdd": true,
      "categoryId": 1
    },
    {
      "name": "blog3",
      "image": blogImageAssets.blog7,
      "totalReadCompleted": 0.1,
      "blogBy": "markJeckno",
      "type": "uXUIDesign",
      "date": "aug202021",
      "isAdd": false,
      "categoryId": 1
    },
    {
      "name": "blog4",
      "image": blogImageAssets.blog8,
      "totalReadCompleted": 0.1,
      "blogBy": "markJeckno",
      "type": "uXUIDesign",
      "date": "aug202021",
      "isAdd": false,
      "categoryId": 2
    },
    {
      "name": "blog5",
      "image": blogImageAssets.blog9,
      "totalReadCompleted": 0.1,
      "blogBy": "markJeckno",
      "type": "uXUIDesign",
      "date": "aug202021",
      "isAdd": false,
      "categoryId": 2
    },
    {
      "name": "blog6",
      "image": blogImageAssets.blog10,
      "totalReadCompleted": 0.1,
      "blogBy": "markJeckno",
      "type": "uXUIDesign",
      "date": "aug202021",
      "isAdd": false,
      "categoryId": 3
    }
  ];

  //trending tags
  var trendingTags = [
    {"id": 1, "title": "global"},
    {"id": 2, "title": "covid"},
    {"id": 3, "title": "trendingnews"},
    {"id": 3, "title": "timesnow"},
    {"id": 3, "title": "application"}
  ];

  //notification
  var notificationList = [
    {
      "title": "notification1",
      "date": "july102021",
      "image": blogImageAssets.blog4,
      "isRead": false
    },
    {
      "title": "notification2",
      "date": "july52021",
      "image": blogImageAssets.blog5,
      "isRead": false
    },
    {
      "title": "notification3",
      "date": "june52021",
      "image": blogImageAssets.blog5,
      "isRead": true
    },
    {
      "title": "notification1",
      "date": "april202021",
      "image": blogImageAssets.notification1,
      "isRead": true
    },
    {
      "title": "notification4",
      "date": "july102021",
      "image": blogImageAssets.notification2,
      "isRead": true
    },
    {
      "title": "notification5",
      "date": "july52021",
      "image": blogImageAssets.notification3,
      "isRead": true
    },
    {
      "title": "notification6",
      "date": "june52021",
      "image": blogImageAssets.notification4,
      "isRead": true
    },
    {
      "title": "notification7",
      "date": "april202021",
      "image": blogImageAssets.notification1,
      "isRead": true
    },
  ];

  //blog detail
  var blogDetail = {
    "image": blogImageAssets.blog1,
    "name": "markJecno",
    "userName": "mark",
    "blogTitle": "blog1",
    "date": "january242021",
    "readTime": "minRead",
    "blogDes": [
      "blogDetailTitle",
      "blogDetail1",
      "blogDetail2"
    ],
    "comments": [
      {
        "image": blogImageAssets.user1,
        "name": "markJacob",
        "comment": "comment1",
        "replyTime": "minAgo2",
        "reply": [
          {
            "image": blogImageAssets.user2,
            "name": "markJacob",
            "comment": "comment2",
            "replyTime": "minAgo2"
          }
        ]
      },
      {
        "image": blogImageAssets.user1,
        "name": "markJacob",
        "comment": "comment1",
        "replyTime": "minAgo2"
      }
    ]
  };
}
