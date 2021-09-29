import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_ui_templates/pages/appsettings/appsettings_page.dart';
import 'package:flutter_ui_templates/pages/onboarding/onboarding_page.dart';
import 'package:flutter_ui_templates/pages/splash/splash_page.dart';
import 'package:flutter_ui_templates/utilities/splash/splash.dart';
import 'pages/signin/signin_page.dart';
import 'pages/signup/signup_page.dart';
import 'utilities/consts/my_consts.dart';
import 'widget/material_button_box.dart';
import 'animation/manage_route_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    return MaterialApp(
      title: MyConsts.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MyConsts.mymaterialpalette,
          scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyHomePage(title: MyConsts.appTitle),
    );
     */
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(home: Splash());
        } else {
          // Loading is done, return the app:
          return MaterialApp(
            title: MyConsts.appTitle,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: MyConsts.mymaterialpalette,
              scaffoldBackgroundColor: Colors.white,
            ),
            home: const MyHomePage(),
          );
        }
      },
    );


  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyConsts.appTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            tooltip: MyConsts.tooltipTextIconButton,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text(MyConsts.msgTextUnderConstruction)));
            },
          ),
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: MyConsts.specificBlueValue,
              ),
              child:
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset("assets/images/app_home_banner.png"),
                    ),
                    Positioned(
                      right: 20.0,
                      top: 10.0,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width/5,
                        child: Image.asset("assets/images/flutter_logo.png"),
                      ),
                    ),
                  ],
                ),
            ),
            ListTile(
              title: const Text(MyConsts.aboutTheApp),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 20.0,
            runSpacing: 20.0,
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/app_home_banner.png"),

                  Positioned(
                    right: 20.0,
                    top: 10.0,
                    child:
                    SizedBox(
                      width: MediaQuery.of(context).size.width/5,
                        child: Image.asset("assets/images/flutter_logo.png"),
                    ),
                  ),
                ],
              ),
              Row(children: [
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                      child: const Divider(
                        color: Colors.black26,
                        height: 50,
                      )),
                ),

                Text(MyConsts.templateTypesText, style: TextStyle(fontSize: MediaQuery.of(context).size.width/25.0) ),

                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                      child: const Divider(
                        color: Colors.black26,
                        height: 50,
                      )),
                ),
              ]),
              MaterialButtonBox(
                  pColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                  pText: MyConsts.btnTextSignIn,
                  pressAction: () {
                    Navigator.push(context, ManageRouteAnimation(page: const SignInPage()));
                  }),
              MaterialButtonBox(
                  pColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                  pText: MyConsts.btnTextSignUp,
                  pressAction: () {
                    Navigator.push(context, ManageRouteAnimation(page: const SignUpPage()));
                  }),
              MaterialButtonBox(
                  pColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                  pText: MyConsts.btnTextSplashScreen,
                  pressAction: () {
                    Navigator.push(context, ManageRouteAnimation(page: const SplashPage()));
                  }),
              MaterialButtonBox(
                  pColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                pText: MyConsts.btnTextOnboarding,
                  pressAction: () {
                    Navigator.push(context, ManageRouteAnimation(page: const OnboardingPage()));
                  }),
              MaterialButtonBox(
                  pColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                pText: MyConsts.btnTextAppSettings,
                  pressAction: () {
                    Navigator.push(context, ManageRouteAnimation(page: const AppSettingsPage()));
                  }),
              MaterialButtonBox(
                  pColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                pText: MyConsts.btnTextUserProfile,
              ),
              MaterialButtonBox(
                  pColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                pText: MyConsts.btnTextHomePage,
              ),
              MaterialButtonBox(
                  pColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                pText: MyConsts.btnTextProductDetails,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    await Future.delayed(const Duration(seconds: 3));
  }
}