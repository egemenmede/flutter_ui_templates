import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool lightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return Scaffold(
      backgroundColor: lightMode
          ? const Color(0x00e1f5fe).withValues()
          : const Color(0x00042a49).withValues(),
      body: Center(
          child: lightMode
              ? Image.asset('assets/images/splash.png')
              : Image.asset('assets/images/splash_dark.png')),
    );
  }
}
