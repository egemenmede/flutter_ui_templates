import 'package:flutter/material.dart';
import 'package:flutter_ui_templates/animation/manage_route_animation.dart';
import 'package:flutter_ui_templates/pages/onboarding/onboarding_page.dart';
import 'package:flutter_ui_templates/utilities/consts/my_consts.dart';
import 'package:flutter_ui_templates/utilities/onboarding/onboarding_skeleton.dart';

class OnboardingScreen extends StatefulWidget {
  final List<OnboardingSkeleton> onboardingSkeletonList;
  final MaterialPageRoute pageRoute;

  const OnboardingScreen(
      {Key? key, required this.onboardingSkeletonList, required this.pageRoute})
      : super(key: key);

  void skipPage(BuildContext context) {
    Navigator.push(context, pageRoute);
  }

  @override
  _OnboardingScreenState createState() {
    return _OnboardingScreenState();
  }
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController();
  int currentPage = 0;
  bool lastPage = false;

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
      if (currentPage == widget.onboardingSkeletonList.length - 1) {
        lastPage = true;
      } else {
        lastPage = false;
      }
    });
  }

  Widget _buildPageIndicator(int page) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height: page == currentPage ? 10.0 : 6.0,
      width: page == currentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: page == currentPage ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 3,
            child: PageView(
              children: widget.onboardingSkeletonList,
              controller: controller,
              physics: const BouncingScrollPhysics(),
              onPageChanged: _onPageChanged,
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextButton(
                  child: Text(lastPage ? "" : MyConsts.onboardingSkipText,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  onPressed: () => lastPage ? null : Navigator.push(context, ManageRouteAnimation(page: const OnboardingPage())),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    children: [
                      _buildPageIndicator(0),
                      _buildPageIndicator(1),
                      _buildPageIndicator(2),
                    ],
                  ),
                ),
                TextButton(
                  child: Text(lastPage ? MyConsts.onboardingGotItText : MyConsts.onboardingNextText,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  onPressed: () => lastPage
                      ? Navigator.push(context, ManageRouteAnimation(page: const OnboardingPage()))
                      //? widget.skipPage(context, MaterialPageRoute(builder: (context) => OnboardingPage()))
                      : controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
