import 'package:flutter/material.dart';
import 'package:flutter_ui_templates/animation/manage_route_animation.dart';
import 'package:flutter_ui_templates/pages/signin/signin_page.dart';
import 'package:flutter_ui_templates/utilities/consts/my_consts.dart';

class SignInButtonWidget extends StatelessWidget {
  const SignInButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        width:50,
        height: 50,
        child: ElevatedButton(
            child: Text(
              MyConsts.dashLoginText,
                style: MyConsts.myTextStyle.copyWith(
                    color: Colors.white)
            ),
            onPressed: () => {
                  Navigator.push(
                      context, ManageRouteAnimation(page: const SignInPage())),
                }),
      ),
    );
  }
}
