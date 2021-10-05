import 'package:flutter/material.dart';
import 'package:flutter_ui_templates/utilities/consts/my_consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xFFF58220),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 150,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    "assets/images/male_default_profile_picture.jpeg"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16.0),
                            child: Text("John Doe",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4.0),
                            child: Text("john.doe@gmail.com"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginFormTemplate extends StatelessWidget {
  final emailField = TextField(
    obscureText: false,
    showCursor: true,
    style: MyConsts.myTextStyle,
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      labelText: MyConsts.loginEmailText,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0)),
      prefixIcon: Icon(
        Icons.mail,
        color: const Color(0xFF666666),
        size: MyConsts.defaultIconSize,
      ),
    ),
  );
  final passwordField = TextField(
    obscureText: true,
    showCursor: true,
    style: MyConsts.myTextStyle,
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      labelText: MyConsts.loginPasswordText,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0)),
      prefixIcon: Icon(
        Icons.lock_rounded,
        color: const Color(0xFF666666),
        size: MyConsts.defaultIconSize,
      ),
      suffixIcon: IconButton(
          icon: Icon(
            Icons.remove_red_eye,
            color: const Color(0xFF666666),
            size: MyConsts.defaultIconSize,
          ),
          onPressed: () {
            debugPrint('onPressed: Login Password suffixIcon');
          }),
    ),
  );

  LoginFormTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 155.0,
          child: Image.asset(
            "assets/images/your_logo_here.png",
            fit: BoxFit.contain,
            width: MediaQuery.of(context).size.width / 1.4,
          ),
        ),
        const SizedBox(height: 30.0),
        emailField,
        const SizedBox(height: 15.0),
        passwordField,
        const SizedBox(
          height: 35.0,
        ),
        Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(4.0),
          color: const Color(0xff242441),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {},
            child: Text(MyConsts.loginButtonText,
                textAlign: TextAlign.center,
                style: MyConsts.myTextStyle.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}

class FacebookGoogleLogin extends StatelessWidget {
  const FacebookGoogleLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.black12,
                        Colors.black54,
                      ],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(1.0, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                width: 100.0,
                height: 1.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Text(
                  MyConsts.loginOrText,
                  style: MyConsts.myTextStyle.copyWith(
                      color: const Color(0xFF2c2b2b),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.black54,
                        Colors.black12,
                      ],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(1.0, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                width: 100.0,
                height: 1.0,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 40.0),
              child: GestureDetector(
                onTap: () => {
                  debugPrint('onPressed: Login Page - Facebook Sign In'),
                },
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.indigo),
                  child: const Icon(
                    FontAwesomeIcons.facebookF,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: GestureDetector(
                onTap: () => {
                  debugPrint('onPressed: Login Page - Google Sign In'),
                },
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red),
                  child: const Icon(
                    FontAwesomeIcons.google,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              MyConsts.loginDontAccountText,
              style: MyConsts.myTextStyle.copyWith(
                  color: const Color(0xFF666666), fontStyle: FontStyle.normal),
            ),
            InkWell(
              onTap: () => {
                Navigator.pop(context)
                //Navigator.push(context, ManageRouteAnimation(page: const SignInPage())),
              },
              child: Text(
                MyConsts.loginSignupText,
                style: MyConsts.myTextStyle.copyWith(
                    color: MyConsts.specificOrangeValue,
                    fontStyle: FontStyle.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
