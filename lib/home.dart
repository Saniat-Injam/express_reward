import 'package:express_reward/custom_section/grid_menu.dart';
import 'package:express_reward/custom_section/menu_item.dart';
import 'package:express_reward/custom_section/selection_tile.dart';
import 'package:express_reward/onboarding_screen.dart';
import 'package:express_reward/drawer_pages/user_page.dart';
//import 'package:express_reward/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:express_reward/drawer_pages/logout_screen.dart';

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
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Image.asset("icons/appbar_icons/drawer.png"),
          );
        }),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Icon(Icons.monetization_on, color: Colors.green),
            Image.asset("icons/appbar_icons/dollar.png"),

            Text(
              "Express Reward",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("icons/appbar_icons/wallet.png"),
                SizedBox(width: 6),
                Text(
                  "\$1245.90",
                  style: TextStyle(
                    color: Color(0xff00EA7A),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8),
          //Icon(Icons.notifications, color: Colors.white),
          Image.asset("icons/appbar_icons/bell.png"),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  // backgroundColor: Colors.green,
                  radius: 48,
                  backgroundImage: AssetImage("icons/scaffold_icons/human.png"),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 4),
                    Text(
                      "Good Morning Tahmid!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Let’s Start Earning",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
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
      backgroundColor: Colors.white,
      // Scrollable Column
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

  // Drawer Header
  buildHeader(BuildContext context) {
    // Material widget instead of container for including InkWell
    return Material(
      color: Color(0xff0D0C22),
      // Inkwell widget to include some interaction to the header
      child: InkWell(
        onTap: () {
          // Close navigation drawer before
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
                  SizedBox(width: 20),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 48,
                        backgroundImage: AssetImage("images/avatar_image.png"),
                      ),
                    ],
                  ),
                  SizedBox(width: 14),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tahmid Abdullah",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Updrade",
                            style: TextStyle(
                              fontSize: 12,
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

  // Column Items
  buildMenuItems(BuildContext context) {
    return Container(
      color: Color(0xff0D0C22),
      padding: EdgeInsets.all(24),
      // Wrap widget instead of column widget for vertical spacing
      child: Wrap(
        runSpacing: 16,
        children: [
          ListTile(
            leading: Image.asset("icons/sidebar_icons/membership.png"),
            title: Text(
              "Membership",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {
              // Close the navigation drawer before
              Navigator.pop(context);
              // Navigator.of(context).push(MaterialPageRoute(
              //   //builder: (context) => MembershipPage(),
              // ));
            },
          ),
          ListTile(
            leading: Image.asset("icons/sidebar_icons/leaderboard.png"),
            title: Text(
              "Leaderboard",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset("icons/sidebar_icons/promotion.png"),
            title: Text(
              "Promotion",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset("icons/sidebar_icons/refer_app.png"),
            title: Text(
              "Refer App",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset("icons/sidebar_icons/settings.png"),
            title: Text(
              "Settings",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset("icons/sidebar_icons/faqs.png"),
            title: Text(
              "FAQs",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset("icons/sidebar_icons/share_app.png"),
            title: Text(
              "Share App",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset("icons/sidebar_icons/rate_us.png"),
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
            leading: Image.asset("icons/sidebar_icons/privacy_policy.png"),
            title: Text(
              "Privacy Policy",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading:
                Image.asset("icons/sidebar_icons/terms_and_conditions.png"),
            title: Text(
              "Terms & Conditions",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset("icons/sidebar_icons/delete_account.png"),
            title: Text(
              "Delete Account",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset("icons/sidebar_icons/about.png"),
            title: Text(
              "About",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset("icons/sidebar_icons/logout.png"),
            title: Text(
              "logout",
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onTap: () async {
              // Navigate directly to onboarding page
              final prefs = await SharedPreferences.getInstance();
              prefs.setBool("showHome", false);

              // Navigator.of(context).pushReplacement(
              //   MaterialPageRoute(
              //     builder: (context) => OnboardingScreen(),
              //   ),
              // );
              showLogoutDialog(context);
            },
          ),
        ],
      ),
    );
  }
}
