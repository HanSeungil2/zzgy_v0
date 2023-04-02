import 'package:flutter/material.dart';

enum ThemeType {
  light,
  dark,
}

class AppTheme {
  static ThemeType defaultTheme = ThemeType.light;

  //Theme Colors
  bool isDark;

  //main theme color
  Color mainThemeColor;
  Color mainPrimaryColor;
  Color mainThemeBgColor;
  Color mainThemeBgColor1;
  Color mainGradientColor;
  Color mainGradient1Color;
  Color mainContentColor;

  Color groceryThemeColor;
  Color groceryTheme1Color;
  Color groceryThemeShadowColor;
  Color groceryTitleColor;
  Color groceryTitle1Color;
  Color grocerySecondaryColor;
  Color groceryBorderColor;
  Color groceryRedColor;
  Color groceryBlueColor;
  Color groceryGradientColor1;
  Color groceryGreenColor;
  Color groceryUnRatedColor;
  Color groceryRatedColor;
  Color groceryDrawerEmailColor;

  //food theme color
  Color foodPrimaryColor;
  Color foodPrimaryLightColor;
  Color foodShadowColor;
  Color foodContentColor;
  Color foodContentColor1;
  Color foodTitleColor;
  Color foodTitleColor1;
  Color foodUnselectTabColor;

  //ecommerce theme color
  Color eCommercePrimaryColor;
  Color eCommerceThemeColor;
  Color eCommerceTitleColor;
  Color eCommerceTitleColor1;
  Color eCommerceLightBgColor;
  Color eCommerceIndexColor;
  Color eCommerceInActiveColor;
  Color eCommerceBGColor;
  Color eCommercePinkColor;
  Color eCommerceLightPinkColor;
  Color eCommerceGreenColor;
  Color eCommerceLightGreenColor;

  //hotel booking theme color
  Color hotelTitleColor;
  Color hotelTitleColor1;
  Color hotelBorderColor;
  Color hotelLightBgColor;
  Color hotelPrimaryColor;
  Color hotelGradientColor;
  Color hotelContentColor;
  Color hotelCategoryBgColor;
  Color hotelCategoryBgColor1;

  //learning theme color
  Color learningYellowColor;
  Color learningOrangeColor;
  Color learningContentColor;
  Color learningTitleColor;
  Color learningTitle1Color;
  Color learningPrimaryColor;
  Color learningSecondaryColor;
  Color learningGradientColor;
  Color learningTextBoxColor;
  Color learningTextColor;

  //chat theme color
  Color chatPrimaryColor;
  Color chatGreyColor;
  Color chatTitleColor;
  Color chatTitle1Color;
  Color chatContentColor;

  //cab theme color
  Color cabPrimaryColor;
  Color cabDarkColor;
  Color cabTitleColor;
  Color cabTitleColor1;
  Color cabBorderColor;
  Color cabBorder1Color;
  Color cabYellowColor1;
  Color cabYellowColor2;
  Color cabBlackColor1;
  Color cabBlackColor2;
  Color cabTabBGColor2;

  //fitness theme color
  Color fitnessPrimaryColor;
  Color fitnessContent;
  Color fitnessGrey;
  Color fitnessStepper;
  Color fitnessGradient;
  Color fitnessDivider;
  Color fitnessConnector;

  //financial theme color
  Color financialLightGray;
  Color financialLightGray1;
  Color financialDarkBg;
  Color financialDarkGray;
  Color financialContent;
  Color financialDark;
  Color financialDark1;
  Color financialPrimary;
  Color financialSecondary;
  Color financialThemeLight;
  Color financialThemeGray;
  Color financialDivider;
  Color financialOption1;
  Color financialOption2;
  Color financialOption3;
  Color financialOption4;
  Color financialPink;
  Color financialBorder;
  Color financialDesign;

  //blog
  Color blogTitle;
  Color blogTitle1;
  Color blogPrimary;
  Color blogContent;
  Color blogContentDark;
  Color blogChooseTopicBg;
  Color blogChatTextBorder;
  Color blogLinearBorder;

  //nft
  Color nftThemeColor;
  Color nftDarkColor;
  Color nftTitleColor;
  Color nftDividerColor;
  Color nftRedColor;
  Color nftGreenColor;
  Color nftBorderColor;
  Color nftDivider;

  Color txt;
  Color primary;
  Color primaryLight;
  Color secondary;
  Color accentTxt;
  Color bg1;
  Color bgColor;
  Color surface;
  Color error;
  Color dividerColor;

  //Extra Colors
  Color bgGray;
  Color gray;
  Color darkGray;
  Color lightGray;
  Color borderGray;
  Color green;
  Color white;
  Color whiteColor;
  Color blackText;
  Color blackColor;
  Color textColor;
  Color contentColor;
  Color borderColor;
  Color greenColor;
  Color darkContentColor;
  Color ratingColor;
  Color homeCategoryColor;
  Color greyLight25;
  Color lightModeColor;
  Color languageColor;
  Color rtlColor;
  Color redColor;
  Color darkGreyColor;

  /// Default constructor
  AppTheme({
    required this.isDark,
    required this.mainThemeColor,
    required this.mainPrimaryColor,
    required this.mainThemeBgColor,
    required this.mainThemeBgColor1,
    required this.mainGradientColor,
    required this.mainGradient1Color,
    required this.mainContentColor,

    //grocery theme color
    required this.groceryThemeColor,
    required this.groceryTheme1Color,
    required this.groceryThemeShadowColor,
    required this.groceryTitleColor,
    required this.groceryTitle1Color,
    required this.grocerySecondaryColor,
    required this.groceryBorderColor,
    required this.groceryRedColor,
    required this.groceryBlueColor,
    required this.groceryGradientColor1,
    required this.groceryGreenColor,
    required this.groceryUnRatedColor,
    required this.groceryRatedColor,
    required this.groceryDrawerEmailColor,

    //food theme color
    required this.foodPrimaryColor,
    required this.foodPrimaryLightColor,
    required this.foodShadowColor,
    required this.foodContentColor,
    required this.foodContentColor1,
    required this.foodTitleColor,
    required this.foodTitleColor1,
    required this.foodUnselectTabColor,

    //ecommerce theme color
    required this.eCommercePrimaryColor,
    required this.eCommerceThemeColor,
    required this.eCommerceTitleColor,
    required this.eCommerceTitleColor1,
    required this.eCommerceLightBgColor,
    required this.eCommerceIndexColor,
    required this.eCommerceInActiveColor,
    required this.eCommerceBGColor,
    required this.eCommercePinkColor,
    required this.eCommerceLightPinkColor,
    required this.eCommerceGreenColor,
    required this.eCommerceLightGreenColor,

    //hotel theme color
    required this.hotelTitleColor,
    required this.hotelTitleColor1,
    required this.hotelBorderColor,
    required this.hotelLightBgColor,
    required this.hotelPrimaryColor,
    required this.hotelGradientColor,
    required this.hotelContentColor,
    required this.hotelCategoryBgColor,
    required this.hotelCategoryBgColor1,

    //learning theme color
    required this.learningYellowColor,
    required this.learningOrangeColor,
    required this.learningContentColor,
    required this.learningTitleColor,
    required this.learningTitle1Color,
    required this.learningPrimaryColor,
    required this.learningSecondaryColor,
    required this.learningGradientColor,
    required this.learningTextBoxColor,
    required this.learningTextColor,

    //chat theme color
    required this.chatPrimaryColor,
    required this.chatGreyColor,
    required this.chatTitleColor,
    required this.chatTitle1Color,
    required this.chatContentColor,
    required this.cabPrimaryColor,
    required this.cabDarkColor,
    required this.cabTitleColor,
    required this.cabTitleColor1,
    required this.cabBorderColor,
    required this.cabBorder1Color,
    required this.cabYellowColor1,
    required this.cabYellowColor2,
    required this.cabBlackColor1,
    required this.cabBlackColor2,
    required this.cabTabBGColor2,

    //fitness theme color
    required this.fitnessPrimaryColor,
    required this.fitnessContent,
    required this.fitnessGrey,
    required this.fitnessStepper,
    required this.fitnessGradient,
    required this.fitnessDivider,
    required this.fitnessConnector,

    //financial theme color
    required this.financialLightGray,
    required this.financialLightGray1,
    required this.financialDarkBg,
    required this.financialDarkGray,
    required this.financialContent,
    required this.financialDark,
    required this.financialDark1,
    required this.financialPrimary,
    required this.financialSecondary,
    required this.financialThemeLight,
    required this.financialThemeGray,
    required this.financialDivider,
    required this.financialOption1,
    required this.financialOption2,
    required this.financialOption3,
    required this.financialOption4,
    required this.financialPink,
    required this.financialBorder,
    required this.financialDesign,

    //blog theme color
    required this.blogTitle,
    required this.blogTitle1,
    required this.blogPrimary,
    required this.blogContent,
    required this.blogContentDark,
    required this.blogChooseTopicBg,
    required this.blogChatTextBorder,
    required this.blogLinearBorder,

    //nft theme color
    required this.nftThemeColor,
    required this.nftDarkColor,
    required this.nftTitleColor,
    required this.nftDividerColor,
    required this.nftRedColor,
    required this.nftGreenColor,
    required this.nftBorderColor,
    required this.nftDivider,

    required this.txt,
    required this.primary,
    required this.primaryLight,
    required this.secondary,
    required this.accentTxt,
    required this.bg1,
    required this.bgColor,
    required this.surface,
    required this.error,
    required this.dividerColor,
    //Extra
    required this.bgGray,
    required this.gray,
    required this.darkGray,
    required this.lightGray,
    required this.borderGray,
    required this.green,
    required this.white,
    required this.whiteColor,
    required this.blackText,
    required this.blackColor,
    required this.textColor,
    required this.contentColor,
    required this.borderColor,
    required this.greenColor,
    required this.darkContentColor,
    required this.ratingColor,
    required this.homeCategoryColor,
    required this.greyLight25,
    required this.lightModeColor,
    required this.languageColor,
    required this.rtlColor,
    required this.redColor,
    required this.darkGreyColor,
  });

  /// fromType factory constructor
  factory AppTheme.fromType(ThemeType t) {
    switch (t) {
      case ThemeType.light:
        return AppTheme(
          isDark: false,
          mainThemeColor: const Color(0xFF2A6354),
          mainPrimaryColor: const Color(0xFF2A6354),
          mainThemeBgColor: const Color(0xFFFAFAFA),
          mainThemeBgColor1: const Color(0xFFFAFAFA),
          mainGradientColor: const Color(0xFF24695C),
          mainGradient1Color: const Color(0xFF00261F),
          mainContentColor: const Color(0xFFD1D1D1),

          groceryThemeColor: const Color(0xFF3C8599),
          groceryTheme1Color: const Color(0xFF3C8599),
          groceryThemeShadowColor: const Color(0xFF3C8599).withOpacity(.1),
          groceryTitleColor: const Color(0xFF1B1B3E),
          groceryTitle1Color: const Color(0xFF1B1B3E),
          grocerySecondaryColor: const Color(0xFF8F8FB2),
          groceryBorderColor: const Color(0xFFE8E8E8),
          groceryRedColor: const Color(0xFFC43218),
          groceryBlueColor: const Color(0xFF2D4996),
          groceryGradientColor1: const Color(0xFFF5F9FA),
          groceryGreenColor: const Color(0xFF0BAF9A),
          groceryUnRatedColor: const Color(0xFFCACACA),
          groceryRatedColor: const Color(0xFFFFBF13),
          groceryDrawerEmailColor: const Color(0xFFD6D6D6),


          foodPrimaryColor: const Color(0xFFFEAF18),
          foodPrimaryLightColor: const Color(0xFFFFF9EC),
          foodShadowColor: const Color(0xFFd5d5d5).withOpacity(.3),
          foodContentColor: const Color(0xFFBCBCBC),
          foodContentColor1: const Color(0xFFBCBCBC),
          foodTitleColor: const Color(0xFF433417),
          foodTitleColor1: const Color(0xFF433417),
          foodUnselectTabColor: const Color(0xFFA4A4A4),

          eCommercePrimaryColor: const Color(0xFF373737),
          eCommerceThemeColor: const Color(0xFFFFBA46),
          eCommerceTitleColor: const Color(0xFF545454),
          eCommerceTitleColor1: const Color(0xFF545454),
          eCommerceLightBgColor: const Color(0xFFF6F6F6),
          eCommerceIndexColor: const Color(0xFF9F9F9F),
          eCommerceInActiveColor: const Color(0xFF6A6A6A),
          eCommerceBGColor: const Color(0xFFD9D6D9),
          eCommercePinkColor: const Color(0xFF6A1A21),
          eCommerceLightPinkColor: const Color(0xFFF5C2C7),
          eCommerceGreenColor: const Color(0xFF0C4128),
          eCommerceLightGreenColor: const Color(0xFFD1E7DD),

          hotelTitleColor: const Color(0xFF4A4A4A),
          hotelTitleColor1: const Color(0xFF4A4A4A),
          hotelBorderColor: const Color(0xFFEAEAEA),
          hotelLightBgColor: const Color(0xFFF8F8F8),
          hotelPrimaryColor: const Color(0xFF0363DA),
          hotelGradientColor: const Color(0xFF5546CB),
          hotelContentColor: const Color(0xFFA3A3A3),
          hotelCategoryBgColor: const Color(0xFFEBEBEB),
          hotelCategoryBgColor1: const Color(0xFFEBEBEB),

          learningYellowColor: const Color(0xFFFFCE1F),
          learningOrangeColor: const Color(0xFFF5A200),
          learningContentColor: const Color(0xFF9DACB1),
          learningTitleColor: const Color(0xFF164150),
          learningTitle1Color: const Color(0xFF164150),
          learningPrimaryColor: const Color(0xFF223352),
          learningSecondaryColor: const Color(0xFF344D54),
          learningGradientColor: const Color(0xFF415D6C),
          learningTextBoxColor: const Color(0xFFF5F7F7),
          learningTextColor: const Color(0xFFDBDBDB),

          chatPrimaryColor: const Color(0xFFCDE9DD),
          chatGreyColor: const Color(0xFFEEEEEE),
          chatTitleColor: const Color(0xFF384849),
          chatTitle1Color: const Color(0xFF384849),
          chatContentColor: const Color(0xFF848F8F),

          cabPrimaryColor: const Color(0xFFFFBB12),
          cabDarkColor: const Color(0xFF1C1A1A),
          cabTitleColor: const Color(0xFF3E3E3E),
          cabTitleColor1: const Color(0xFF3E3E3E),
          cabBorderColor: const Color(0xFFD9D9D9),
          cabBorder1Color: const Color(0xFFF3F3F3),
          cabYellowColor1: const Color(0xFFFFA000),
          cabYellowColor2: const Color(0xFFFFD54F),
          cabBlackColor1: const Color(0xFF232526),
          cabBlackColor2: const Color(0xFF414345),
          cabTabBGColor2: const Color(0xFFF4F4F4),

          fitnessPrimaryColor: const Color(0xFF4466F2),
          fitnessContent: const Color(0xFFA0A0A0),
          fitnessGrey: const Color(0xFFB1B1B1),
          fitnessStepper: const Color(0xFFE2E2E2),
          fitnessGradient: const Color(0xFF1EA6EC),
          fitnessDivider: const Color(0xFFE6E6E6),
          fitnessConnector: const Color(0xFFC9C9C9),

          financialLightGray: const Color(0xFFC4C4C4),
          financialLightGray1: const Color(0xFFC4C4C4),
          financialDarkBg: const Color(0xFF030303),
          financialDarkGray: const Color(0xFF151515),
          financialContent: const Color(0xFF696969),
          financialDark: const Color(0xFF141414),
          financialDark1: const Color(0xFF141414),
          financialPrimary: const Color(0xFF9B0144),
          financialSecondary: const Color(0xFF3701B3),
          financialThemeLight: const Color(0xFFD1F5FF),
          financialThemeGray: const Color(0xFF4B4B4B),
          financialDivider: const Color(0xFF131313),
          financialOption1: const Color(0xFF001AFF),
          financialOption2: const Color(0xFF2629AF),
          financialOption3: const Color(0xFF57ADDD),
          financialOption4: const Color(0xFF61C58B),
          financialPink: const Color(0xFF930354),
          financialBorder: const Color(0xFF222222),
          financialDesign: const Color(0xFF1C1C1C),

          blogTitle: const Color(0xFF222222),
          blogTitle1: const Color(0xFF222222),
          blogContent: const Color(0xFFAFAFAF),
          blogPrimary: const Color(0xFFFFC700),
          blogContentDark: const Color(0xFF858585),
          blogChooseTopicBg: const Color(0xFFFBFBFB),
          blogChatTextBorder: const Color(0xFFF5F5F5),
          blogLinearBorder: const Color(0xFF2A2A72),

          nftThemeColor: const Color(0xFFFF9C42),
          nftDarkColor: const Color(0xFF454545),
          nftTitleColor: const Color(0xFF464646),
          nftDividerColor: const Color(0xFFEDEDED),
          nftRedColor: const Color(0xFFFF2626),
          nftGreenColor: const Color(0xFF038800),
          nftBorderColor: const Color(0xFFF2F2F2),
          nftDivider: const Color(0xFFE3E3E3),

          txt: const Color(0xFF001928),

          primary: const Color(0xFFFF4C3B),
          primaryLight: const Color(0xFFFFF4F4),
          secondary: const Color(0xFF6EBAE7),
          accentTxt: const Color(0xFF001928),
          bg1: Colors.white,
          bgColor: Colors.white,
          surface: Colors.white,
          error: const Color(0xFFd32f2f),
          dividerColor: const Color(0xFFF9F9F9),
          //Extra
          bgGray: const Color(0xFFF0F8FD),
          gray: const Color(0xFF999999),
          darkGray: const Color(0xFF666666),
          lightGray: const Color(0xFFEDEFF4),
          borderGray: const Color(0xFFE6E8EA),
          green: const Color(0xFF5CB85C),
          white: Colors.white,
          whiteColor: Colors.white,
          blackText: const Color(0xFF222222),
          blackColor: Colors.black,
          contentColor: const Color(0xFF777777),
          borderColor: const Color(0xFFECECEC),
          greenColor: const Color(0xFF008E1F),
          darkContentColor: const Color(0xFFBABABA),
          ratingColor: const Color(0xFFFFBB12),
          homeCategoryColor: const Color(0xFFEAEDF2),
          textColor: Colors.white,
          greyLight25: const Color(0xFFEDEFF4),
          lightModeColor: const Color(0XFFFFF4EC),
          languageColor: const Color(0XFFFCF7F1),
          rtlColor: const Color(0XFFF3F6FB),
          redColor: const Color(0xFFBC0101),
          darkGreyColor: const Color(0xFFACACAC),
        );

      case ThemeType.dark:
        return AppTheme(
          isDark: true,
          mainThemeColor: const Color(0xFF2A6354),
          mainPrimaryColor: const Color(0xFF2A6354),
          mainThemeBgColor: Colors.black,
          mainThemeBgColor1: const Color(0xFFFAFAFA),
          mainGradientColor: const Color(0xFF24695C),
          mainGradient1Color: const Color(0xFF00261F),
          mainContentColor: const Color(0xFFD1D1D1),

          groceryThemeColor: Colors.white,
          groceryTheme1Color: const Color(0xFF3C8599),
          groceryThemeShadowColor: const Color(0xFF3C8599).withOpacity(.3),
          groceryTitleColor: Colors.white,
          groceryTitle1Color: const Color(0xFF1B1B3E),
          grocerySecondaryColor: const Color(0xFF8F8FB2),
          groceryBorderColor: const Color(0xFFE8E8E8),
          groceryRedColor: const Color(0xFFC43218),
          groceryBlueColor: const Color(0xFF2D4996),
          groceryGradientColor1: const Color(0xFFF5F9FA),
          groceryGreenColor: const Color(0xFF0BAF9A),
          groceryUnRatedColor: const Color(0xFFCACACA),
          groceryRatedColor: const Color(0xFFFFBF13),
          groceryDrawerEmailColor: const Color(0xFFD6D6D6),

          foodPrimaryColor: const Color(0xFFFEAF18),
          foodPrimaryLightColor: const Color(0xFF232323),
          foodShadowColor: const Color(0xFFd5d5d5).withOpacity(.3),
          foodContentColor: const Color(0xFFBCBCBC),
          foodContentColor1: Colors.black,
          foodTitleColor: Colors.white,
          foodTitleColor1: const Color(0xFF433417),
          foodUnselectTabColor: const Color(0xFFA4A4A4),

          eCommercePrimaryColor: Colors.white,
          eCommerceThemeColor: const Color(0xFFFFBA46),
          eCommerceTitleColor: const Color(0xFF545454),
          eCommerceTitleColor1: Colors.white,
          eCommerceLightBgColor: Colors.black.withOpacity(.8),
          eCommerceIndexColor: const Color(0xFF9F9F9F),
          eCommerceInActiveColor: const Color(0xFF6A6A6A),
          eCommerceBGColor: const Color(0xFFD9D6D9),
          eCommercePinkColor: const Color(0xFF6A1A21),
          eCommerceLightPinkColor: const Color(0xFFF5C2C7),
          eCommerceGreenColor: const Color(0xFF0C4128),
          eCommerceLightGreenColor: const Color(0xFFD1E7DD),

          hotelTitleColor: const Color(0xFF4A4A4A),
          hotelTitleColor1: Colors.white,
          hotelBorderColor: const Color(0xFFEAEAEA),
          hotelLightBgColor: const Color(0xFFF8F8F8),
          hotelPrimaryColor: const Color(0xFF0363DA),
          hotelGradientColor: const Color(0xFF0363DA),
          hotelContentColor: const Color(0xFFA3A3A3),
          hotelCategoryBgColor: const Color(0xFFEBEBEB),
          hotelCategoryBgColor1:Colors.white30,

          learningYellowColor: const Color(0xFFFFCE1F),
          learningOrangeColor: const Color(0xFFF5A200),
          learningContentColor: const Color(0xFF9DACB1),
          learningTitleColor: Colors.white,
          learningTitle1Color: const Color(0xFF164150),
          learningPrimaryColor: const Color(0xFF223352),
          learningSecondaryColor: const Color(0xFF344D54),
          learningGradientColor: const Color(0xFF415D6C),
          learningTextBoxColor: const Color(0xFFF5F7F7),
          learningTextColor: const Color(0xFFDBDBDB),

          chatPrimaryColor: const Color(0xFFCDE9DD),
          chatGreyColor: const Color(0xFFEEEEEE),
          chatTitleColor: Colors.white,
          chatTitle1Color: const Color(0xFF384849),
          chatContentColor: const Color(0xFF848F8F),
          cabBlackColor1: const Color(0xFF232526),
          cabBlackColor2: const Color(0xFF414345),

          cabPrimaryColor: const Color(0xFFFFBB12),
          cabDarkColor: Colors.white,
          cabTitleColor: const Color(0xFF3E3E3E),
          cabTitleColor1: Colors.white,
          cabBorderColor: const Color(0xFFD9D9D9),
          cabBorder1Color: const Color(0xFFF3F3F3),
          cabYellowColor1: const Color(0xFFFFA000),
          cabYellowColor2: const Color(0xFFFFD54F),
          cabTabBGColor2: const Color(0xFFF4F4F4),

          fitnessPrimaryColor: const Color(0xFF4466F2),
          fitnessContent: const Color(0xFFA0A0A0),
          fitnessGrey: const Color(0xFFB1B1B1),
          fitnessStepper: const Color(0xFFE2E2E2),
          fitnessGradient: const Color(0xFF1EA6EC),
          fitnessDivider: const Color(0xFFE6E6E6),
          fitnessConnector: const Color(0xFFC9C9C9),

          financialLightGray: const Color(0xFFC4C4C4),
          financialLightGray1: Colors.black,
          financialDarkBg: Colors.white,
          financialDarkGray: const Color(0xFF151515).withOpacity(.2),
          financialContent: const Color(0xFF696969),
          financialDark: const Color(0xFF141414),
          financialDark1: Colors.white,
          financialPrimary: const Color(0xFF9B0144),
          financialSecondary: const Color(0xFF3701B3),
          financialThemeLight: const Color(0xFFD1F5FF),
          financialThemeGray: const Color(0xFF4B4B4B),
          financialDivider: const Color(0xFF131313),
          financialOption1: const Color(0xFF001AFF),
          financialOption2: const Color(0xFF2629AF),
          financialOption3: const Color(0xFF57ADDD),
          financialOption4: const Color(0xFF61C58B),
          financialPink: const Color(0xFF930354),
          financialBorder: const Color(0xFF222222),
          financialDesign: Colors.white,

          blogTitle: Colors.white,
          blogTitle1: const Color(0xFF222222),
          blogContent: const Color(0xFFAFAFAF),
          blogPrimary: const Color(0xFFFFC700),
          blogContentDark: const Color(0xFF858585),
          blogChooseTopicBg: const Color(0xFFFBFBFB),
          blogChatTextBorder: const Color(0xFFF5F5F5),
          blogLinearBorder: const Color(0xFF2A2A72),

          nftThemeColor: const Color(0xFFFF9C42),
          nftDarkColor: Colors.white,
          nftTitleColor:  Colors.white,
          nftDividerColor: const Color(0xFFEDEDED),
          nftRedColor: const Color(0xFFFF2626),
          nftGreenColor: const Color(0xFF038800),
          nftBorderColor: const Color(0xFFF2F2F2),
          nftDivider: const Color(0xFFE3E3E3),

          txt: Colors.white,
          primary: const Color(0xFFFF4C3B),
          primaryLight: const Color(0xFF202020),
          secondary: const Color(0xFF6EBAE7),
          accentTxt: const Color(0xFF001928),
          bg1: const Color(0xFF151A1E),
          bgColor: const Color(0xFF262626),
          surface: const Color(0xFF151A1E),
          error: const Color(0xFFd32f2f),
          dividerColor: const Color(0xFFF9F9F9),
          //Extra
          bgGray: const Color(0xFF262F36),
          gray: const Color(0xFF999999),
          darkGray: const Color(0xFF999999),
          lightGray: const Color(0xFF202020),
          borderGray: const Color(0xFF353C41),
          green: const Color(0xFF5CB85C),
          white: Colors.white,
          whiteColor: Colors.black,
          blackText: const Color(0xFF262626),
          blackColor: Colors.white,
          contentColor: const Color(0xFF777777),
          borderColor: const Color(0xFFECECEC),
          greenColor: const Color(0xFF008E1F),
          darkContentColor: const Color(0xFFBABABA),
          ratingColor: const Color(0xFFFFBB12),
          textColor: const Color(0xFF636363),
          homeCategoryColor: const Color(0xFFEAEDF2),
          greyLight25: Colors.black,
          lightModeColor: Colors.black,
          languageColor: Colors.black,
          rtlColor: Colors.black,
          redColor: const Color(0xFFBC0101),
          darkGreyColor: const Color(0xFFACACAC),
        );
    }
  }

  ThemeData get themeData {
    var t = ThemeData.from(
      textTheme: (isDark ? ThemeData.dark() : ThemeData.light()).textTheme,
      colorScheme: ColorScheme(
        brightness: isDark ? Brightness.dark : Brightness.light,
        primary: primary,
        secondary: secondary,
        background: bg1,
        surface: surface,
        onBackground: txt,
        onSurface: txt,
        onError: txt,
        onPrimary: accentTxt,
        onSecondary: accentTxt,
        error: error,
      ),
    );
    return t.copyWith(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: borderGray,
        selectionHandleColor: Colors.transparent,
        cursorColor: primary,
      ),
      buttonTheme: ButtonThemeData(buttonColor: primary),
      highlightColor: Colors.transparent,
      toggleableActiveColor: primary,
    );
  }

//Color shift(Color c, double d) => shiftHsl(c, d * (isDark ? -1 : 1));
}
