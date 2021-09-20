import 'package:flutter/material.dart';
import 'package:flutter_ui_templates/utilities/consts/my_consts.dart';

class MaterialButtonBox extends StatelessWidget {
  final Color pColor;
  final String pText;
  final void Function()? pressAction;

  const MaterialButtonBox({
    Key? key,
    required this.pColor,
    required this.pText,
    this.pressAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(4.0),
      //color: const Color(0xFFf58220),
      color: pColor,
      child: MaterialButton(
        //minWidth: MediaQuery.of(context).size.width,
        height: 60,
        padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
        onPressed: () {
          pressAction?.call();
          //Navigator.push(context, ManageRouteAnimation(page: const SignInPage()));
        },
        child: Text(pText,
            textAlign: TextAlign.center,
            style: MyConsts.myTextStyle
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}