import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui_templates/pages/splash/splash_page.dart';
import 'package:flutter_ui_templates/utilities/splash/splash.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const SplashPage())));
  }

  @override
  Widget build(BuildContext context) {
    return const Splash();
  }
}