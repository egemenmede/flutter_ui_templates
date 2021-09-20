import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_ui_templates/utilities/consts/my_consts.dart';
import 'package:flutter_ui_templates/widget/material_button_box.dart';

import 'animation/manage_route_animation.dart';
import 'pages/signin/signin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConsts.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MyConsts.mymaterialpalette,
          scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyHomePage(title: MyConsts.appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

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
            const DrawerHeader(
              decoration: BoxDecoration(
                color: MyConsts.specificBlueValue,
              ),
              child:
                  Text(MyConsts.appTitle, style: TextStyle(color: Colors.white)),
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
                    right: 40.0,
                    top: 10.0,
                    child: SizedBox(
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
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text(MyConsts.msgTextUnderConstruction)));
                  }),
              MaterialButtonBox(
                  pColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                  pText: MyConsts.btnTextSplashScreen,
                  pressAction: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text(MyConsts.msgTextUnderConstruction)));
                  }),
              MaterialButtonBox(
                  pColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                pText: MyConsts.btnTextOnboarding,
              ),
              MaterialButtonBox(
                  pColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                pText: MyConsts.btnTextAppSettings,
              ),
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
