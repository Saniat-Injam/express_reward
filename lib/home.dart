import 'package:express_reward/custom_section/grid_menu.dart';
import 'package:express_reward/custom_section/menu_item.dart';
import 'package:express_reward/custom_section/selection_tile.dart';
import 'package:express_reward/sidebar_pages/membership_page.dart';
import 'package:express_reward/sidebar_pages/user_page.dart';
//import 'package:express_reward/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      backgroundColor: Color(0xff04031A),
      appBar: AppBar(
        backgroundColor: Color(0xff1D1B42),
        // leading: Icon(
        //   Icons.menu,
        //   color: Colors.white,
        // ),
        title: Row(
          children: [
            Icon(Icons.monetization_on, color: Colors.green),
            SizedBox(width: 4),
            Text(
              "Express Reward",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Color(0xff04031A),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text("\$1245.90",
                style: GoogleFonts.poppins(color: Colors.lightGreenAccent)),
          ),
          SizedBox(width: 10),
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 20,
                  child: Icon(Icons.face, color: Colors.black),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning Tahmid!",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Let’s Start Earning",
                      style: GoogleFonts.poppins(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),

            // FIRST GRID MENU HERE
            SectionTitle("Quick Earning"),
            GridMenu(items: [
              MenuItem("Daily Check",
                  imagePath: "icons/quick_earning/daily_check.png"),
              MenuItem("Watch Video",
                  imagePath: "icons/quick_earning/watch_video.png"),
              MenuItem("Scratch Card",
                  imagePath: "icons/quick_earning/scratch_card.png"),
              MenuItem("Spin Wheel",
                  imagePath: "icons/quick_earning/spin_wheel.png"),
              MenuItem("Reading News",
                  imagePath: "icons/quick_earning/reading_news.png"),
              MenuItem("Refer App",
                  imagePath: "icons/quick_earning/refer_app.png"),
            ]),
            SizedBox(height: 20),

            // SECOND GRID MENU HERE
            SectionTitle("Play Quiz"),
            GridMenu(items: [
              MenuItem("Trending 2024",
                  imagePath: "icons/play_quiz/trending_2024.png"),
              MenuItem("Sports Quiz",
                  imagePath: "icons/play_quiz/sports_quiz.png"),
              MenuItem("Music Quiz",
                  imagePath: "icons/play_quiz/music_quiz.png"),
              MenuItem("English Quiz",
                  imagePath: "icons/play_quiz/english_quiz.png"),
              MenuItem("Bangla Quiz",
                  imagePath: "icons/play_quiz/bangla_quiz.png"),
              MenuItem("Riddle", imagePath: "icons/play_quiz/riddle.png"),
            ]),
            SizedBox(height: 20),

            // THIRD GRID MENU HERE
            SectionTitle("Promotions"),
            GridMenu(items: [
              MenuItem("Boost Video",
                  imagePath: "icons/promotions/boost_video.png"),
              MenuItem("Boost Traffic",
                  imagePath: "icons/promotions/boost_traffic.png"),
              MenuItem("Get Follower",
                  imagePath: "icons/promotions/get_followers_facebook.png"),
              MenuItem("Get Follower",
                  imagePath: "icons/promotions/get_followers_twitter.png"),
              MenuItem("Get Follower",
                  imagePath: "icons/promotions/get_followers_instagram.png"),
              MenuItem("Get Follower",
                  imagePath: "icons/promotions/get_followers_tiktok.png"),
            ]),
          ],
        ),
      ),
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
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MembershipPage(),
              ));
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
