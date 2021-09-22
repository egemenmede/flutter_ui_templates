import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyConsts {
  // ------------------------ FONT/STYLE ------------------------
  static String defaultFontFamily = 'Roboto-Light.ttf';
  static double defaultFontSize = 14;
  static double defaultIconSize = 17;
  static TextStyle myTextStyle = TextStyle(fontFamily: defaultFontFamily, fontSize: defaultFontSize);

  // ------------------------ CUSTOM MATERIAL PALETTE ------------------------
  static const MaterialColor mymaterialpalette = MaterialColor(_mymaterialpalettePrimaryValue, <int, Color>{
    50: Color(0xFFE5E5E8),
    100: Color(0xFFBDBDC6),
    200: Color(0xFF9292A0),
    300: Color(0xFF66667A),
    400: Color(0xFF45455E),
    500: Color(_mymaterialpalettePrimaryValue),
    600: Color(0xFF20203B),
    700: Color(0xFF1B1B32),
    800: Color(0xFF16162A),
    900: Color(0xFF0D0D1C),
  });
  static const int _mymaterialpalettePrimaryValue = 0xFF242441;

  static const MaterialColor mymaterialpaletteAccent = MaterialColor(_mymaterialpaletteAccentValue, <int, Color>{
    100: Color(0xFF5E5EFF),
    200: Color(_mymaterialpaletteAccentValue),
    400: Color(0xFF0000F7),
    700: Color(0xFF0000DE),
  });
  static const int _mymaterialpaletteAccentValue = 0xFF2B2BFF;

  // ------------------------ SPECIFIC COLORS ------------------------
  static const Color specificBlueValue = Color(0xFF242441);
  static const Color specificOrangeValue = Color(0xFFf58220);

  // ------------------------ STRING ------------------------
  // Sign In - Login Text
  static const String loginButtonText = "Login";
  static const String loginEmailText = "Email";
  static const String loginPasswordText = "Password";
  static const String loginOrText = "Sign in with";
  static const String loginDontAccountText = "Don't have an account? ";
  static const String loginSignupText = "Sign up!";

  // Sign Up - Text
  static const String signUpButtonText = "Sign up";
  static const String signUpEmailText = "Email";
  static const String signUpPasswordText = "Password";
  static const String signUpConfirmPasswordText = "Confirm Password";
  static const String signUpOrText = "Sign up with";
  static const String signUpAlreadyAccountText = "Already have an account? ";
  static const String signUpText = "Sign in!";

  // SplashScreen - Login Text
  static const String sSshowButtonText = "Show Splash Screen";

  // Dashboard Text
  static const String dashLoginText = "Login Example";
  static const String templateTypesText = "Template Types";
  static const String btnTextSignIn = "Sign In";
  static const String btnTextSignUp = "Sign Up";
  static const String btnTextSplashScreen = "Splash Screen";
  static const String btnTextOnboarding = "Onboarding";
  static const String btnTextAppSettings = "App Settings";
  static const String btnTextUserProfile = "User Profile";
  static const String btnTextHomePage = "Home Page";
  static const String btnTextProductDetails = "Product Details";
  static const String msgTextUnderConstruction = "The under construction!";
  static const String tooltipTextIconButton = "Show Snackbar";

  // App
  static const String appTitle = "Flutter UI Templates";
  static const String appBackButton = "Back";

  // Drawer
  static const String aboutTheApp = "About the App";
}