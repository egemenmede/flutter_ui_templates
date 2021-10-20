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
      body: SizedBox(
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
                  /*
                  ListView(
                    //scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      Card(
                        child: ListTile(
                          //leading: FlutterLogo(size: 56.0),
                          leading: const Icon(Icons.mail),
                          title: const Text('E-mail'),
                          subtitle: const Text('E-mail'),
                          trailing: const Icon(Icons.edit),
                          onTap: (){},
                        ),
                      ),
                      Card(
                        child: ListTile(
                          //leading: FlutterLogo(size: 56.0),
                          leading: const Icon(Icons.lock_rounded),
                          title: const Text('Password'),
                          subtitle: const Text('Passsword'),
                          trailing: const Icon(Icons.edit),
                          onTap: (){},
                        ),
                      ),
                    ],
                  ),
                   */
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
