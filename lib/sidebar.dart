import 'package:express_reward/drawer_pages/user_page.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: NavigationDrawer(),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }

  buildHeader(BuildContext context) {
    return Material(
      color: Color(0xff0D0C22),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => UserPage(),
          ));
        },
        child: Container(
          padding: EdgeInsets.only(
            top: 24 + MediaQuery.of(context).padding.top,
            bottom: 24,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 30),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 48,
                        backgroundImage: AssetImage("images/avatar_image.png"),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tahmid Abdullah",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Updrade",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  buildMenuItems(BuildContext context) {
    return Container(
      color: Color(0xff0D0C22),
      padding: EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 16,
        children: [
          ListTile(
            leading: Icon(Icons.card_membership, color: Color(0xff00EA7A)),
            title: Text(
              "Membership",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {
              Navigator.pop(context);
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => MembershipPage(),
              // ));
            },
          ),
          ListTile(
            leading: Icon(Icons.leaderboard, color: Color(0xff00EA7A)),
            title: Text(
              "Leaderboard",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.campaign, color: Color(0xff00EA7A)),
            title: Text(
              "Promotion",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.share, color: Color(0xff00EA7A)),
            title: Text(
              "Refer App",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Color(0xff00EA7A)),
            title: Text(
              "Settings",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help, color: Color(0xff00EA7A)),
            title: Text(
              "FAQs",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.share, color: Color(0xff00EA7A)),
            title: Text(
              "Share App",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.star, color: Color(0xff00EA7A)),
            title: Text(
              "Rate Us",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.grey[700],
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip, color: Color(0xff00EA7A)),
            title: Text(
              "Privacy Policy",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.description, color: Color(0xff00EA7A)),
            title: Text(
              "Terms & Conditions",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.delete, color: Color(0xff00EA7A)),
            title: Text(
              "Delete Account",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info, color: Color(0xff00EA7A)),
            title: Text(
              "About",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
