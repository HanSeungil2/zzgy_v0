import '../config.dart';

Color shiftHsl(Color c, [double amt = 0]) {
  var hslc = HSLColor.fromColor(c);
  return hslc.withLightness((hslc.lightness + amt).clamp(0.0, 1.0)).toColor();
}

//main primary gradient
LinearGradient mainPrimaryGradientColor() {
  return  LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        appCtrl.appTheme.mainGradientColor,
        appCtrl.appTheme.mainGradient1Color,
      ]
  );
}


//hotel gradient
LinearGradient gradientColor() {
  return LinearGradient(
      colors: [
        appCtrl.appTheme.hotelPrimaryColor,
        appCtrl.appTheme.hotelGradientColor,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: const [0.0, 10.0],
      tileMode: TileMode.clamp);
}

//hotel gradient
LinearGradient lightGradientColor() {
  return LinearGradient(
      colors: [
        appCtrl.appTheme.hotelPrimaryColor.withOpacity(.6),
        appCtrl.appTheme.hotelGradientColor.withOpacity(.7),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: const [0.0, 10.0],
      tileMode: TileMode.clamp);
}

LinearGradient whiteColor() {
  return LinearGradient(
      colors: [
        appCtrl.appTheme.hotelBorderColor,
        appCtrl.appTheme.hotelBorderColor,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: const [0.0, 10.0],
      tileMode: TileMode.clamp);
}

//hotel gradient
LinearGradient hideColor() {
  return LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      appCtrl.appTheme.whiteColor.withOpacity(.1),
      appCtrl.appTheme.whiteColor.withOpacity(.5),
      appCtrl.appTheme.whiteColor.withOpacity(.8),
      appCtrl.appTheme.whiteColor.withOpacity(.9),
    ],
  );
}

//hotel gradient
LinearGradient blogHideColor() {
  return LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      const Color(0xFFFFFFFF).withOpacity(.1),
      const Color(0xFFFFFFFF).withOpacity(.1),
      const Color(0xFFFFFFFF).withOpacity(.8),
      const Color(0xFFFFFFFF).withOpacity(.9),
    ],
  );
}

//learning gradient light
LinearGradient learningGradientLightColor() {
  return LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      appCtrl.appTheme.learningPrimaryColor.withOpacity(.050),
      appCtrl.appTheme.learningGradientColor.withOpacity(.085)
    ],
  );
}

//learning gradient light
LinearGradient learningGradientThemeLightColor() {
  return LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      appCtrl.appTheme.white.withOpacity(.2),
      appCtrl.appTheme.white.withOpacity(.2)
    ],
  );
}


//learning gradient
LinearGradient learningGradientColor() {
  return LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      appCtrl.appTheme.learningPrimaryColor,
      appCtrl.appTheme.learningGradientColor
    ],
  );
}


//chat gradient
LinearGradient chatGradientColor() {
  return  LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        appCtrl.appTheme.chatPrimaryColor.withOpacity(.5),
        appCtrl.appTheme.chatPrimaryColor,
      ]
  );
}

//cab black gradient
LinearGradient cabBlackGradientColor() {
  return  LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        appCtrl.appTheme.cabBlackColor1,
        appCtrl.appTheme.cabBlackColor2,
      ]
  );
}

//cab primary gradient
LinearGradient cabPrimaryGradientColor() {
  return  LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        appCtrl.appTheme.cabYellowColor1,
        appCtrl.appTheme.cabYellowColor2,
      ]
  );
}


//cab light gradient
LinearGradient cabLightGradientColor() {
  return  LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        appCtrl.appTheme.cabTabBGColor2,
        appCtrl.appTheme.cabTabBGColor2,
      ]
  );
}


//grocery light gradient
LinearGradient groceryLightGradientColor() {
  return  LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        appCtrl.appTheme.groceryGradientColor1,
        appCtrl.appTheme.groceryGradientColor1.withOpacity(.2),
      ]
  );
}

//financial gradient
LinearGradient financialAuthColor() {
  return LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      appCtrl.appTheme.financialPrimary.withOpacity(.5),
      Colors.transparent
    ],
  );
}

//fitness gradient
LinearGradient fitnessColor() {
  return LinearGradient(colors: [
    appCtrl.appTheme.fitnessGradient,
    appCtrl.appTheme.fitnessPrimaryColor
  ]   ,stops: const <double>[0.2, 0.9]);
}

//fitness light gradient
LinearGradient fitnessLightColor() {
  return LinearGradient(colors: [
    appCtrl.appTheme.fitnessGradient.withOpacity(.2),
    appCtrl.appTheme.fitnessPrimaryColor.withOpacity(.2)
  ],   stops: const <double>[0.2, 0.9] );
}