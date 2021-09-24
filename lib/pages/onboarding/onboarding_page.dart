import 'package:flutter/material.dart';
import 'package:flutter_ui_templates/animation/manage_route_animation.dart';
import 'package:flutter_ui_templates/main.dart';
import 'package:flutter_ui_templates/utilities/consts/my_consts.dart';
import 'package:flutter_ui_templates/utilities/onboarding/onboarding_test_screen.dart';


class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 8.0, bottom: 8.0),
            child: Center(
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xff242441),
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  onPressed: () {
                    Navigator.push(context, ManageRouteAnimation(page: OnboardingTestScreen()));
                  },
                  child: Text(MyConsts.onboardingShowButtonText,
                      textAlign: TextAlign.center,
                      style: MyConsts.myTextStyle.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 8.0, bottom: 8.0),
            child: Center(
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xff242441),
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  onPressed: () {
                    Navigator.push(context, ManageRouteAnimation(page: const MyHomePage()));
                  },
                  child: Text(MyConsts.appBackButton,
                      textAlign: TextAlign.center,
                      style: MyConsts.myTextStyle.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}