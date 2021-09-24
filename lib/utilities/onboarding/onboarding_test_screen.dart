import 'package:flutter/material.dart';
import 'package:flutter_ui_templates/utilities/onboarding/onboarding_screen.dart';
import 'package:flutter_ui_templates/utilities/onboarding/onboarding_skeleton.dart';

class OnboardingTestScreen extends StatelessWidget {

  final List<OnboardingSkeleton> list = [
    const OnboardingSkeleton(
      imagePath: "assets/images/one.png",
      title: "Page 1",
      desc: "Page 1 description page 1 description page 1 description page 1 description page 1 description page 1 description page 1 description",
    ),
    const OnboardingSkeleton(
      imagePath: "assets/images/two.png",
      title: "Page 2",
      desc: "Page 2 description page 2 description page 2 description page 2 description page 2 description page 2 description page 2 description",
    ),
    const OnboardingSkeleton(
      imagePath: "assets/images/three.png",
      title: "Page 3",
      desc: "Page 3 description page 3 description page 3 description page 3 description page 3 description page 3 description page 3 description",
    ),
  ];

  OnboardingTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingScreen(onboardingSkeletonList: list, pageRoute: MaterialPageRoute(builder: (context) => OnboardingTestScreen()));
  }
}