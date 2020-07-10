import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const SizeUnit = 10;

const TravelDarkPrimaryColor = Color(0xFF212121);
const secondaryColor = Color(0xFF373737);
const TravelLightPrimaryColor = Color(0xFFFFFFFF);
const TravelSecondaryColor = Color(0xFFF3F7FB);

final TitleText = TextStyle(
  fontSize: ScreenUtil().setSp(SizeUnit.w * 1.7),
  fontWeight: FontWeight.w600,
);

final CaptionText = TextStyle(
  fontSize: ScreenUtil().setSp(SizeUnit.w * 1.3),
  fontWeight: FontWeight.w400,
  color: secondaryColor,
);

final theme = ThemeData(
  brightness: Brightness.light,
  primaryColor: TravelLightPrimaryColor,
  canvasColor: TravelLightPrimaryColor,
  backgroundColor: TravelSecondaryColor,
  iconTheme: ThemeData.light().iconTheme.copyWith(
    color: secondaryColor,
  ),
  textTheme: ThemeData.light().textTheme.apply(
    bodyColor: secondaryColor,
    displayColor: secondaryColor,
  ),
);
//String ANIMATED_SPLASH = '/SplashScreen',
    String MY_ACCOUNT = '/MyAccountPage',
    MY_PROFILE = '/MyProfilePage';
