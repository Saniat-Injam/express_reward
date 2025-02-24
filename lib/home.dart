import 'package:express_reward/custom_section/grid_menu.dart';
import 'package:express_reward/custom_section/selection_tile.dart';
import 'package:express_reward/custom_section/menu_item.dart';
import 'package:express_reward/drawer.dart';
import 'package:flutter/material.dart';

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
                      "Good Morning Samia!",
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

            // FIRST GRID MENU
            SectionTitle("Quick Earning"),
            GridMenu(items: [
              MenuItem(
                title: "Daily Check",
                imagePath: "icons/quick_earning/daily_check.png",
              ),
              MenuItem(
                title: "Watch Video",
                imagePath: "icons/quick_earning/watch_video.png",
              ),
              MenuItem(
                title: "Scratch Card",
                imagePath: "icons/quick_earning/scratch_card.png",
              ),
              MenuItem(
                title: "Spin Wheel",
                imagePath: "icons/quick_earning/spin_wheel.png",
              ),
              MenuItem(
                title: "Reading News",
                imagePath: "icons/quick_earning/reading_news.png",
              ),
              MenuItem(
                title: "Refer App",
                imagePath: "icons/quick_earning/refer_app.png",
              ),
            ]),
            SizedBox(height: 20),

            // SECOND GRID MENU
            SectionTitle("Play Quiz"),
            GridMenu(items: [
              MenuItem(
                title: "Trending 2024",
                imagePath: "icons/play_quiz/trending_2024.png",
              ),
              MenuItem(
                title: "Sports Quiz",
                imagePath: "icons/play_quiz/sports_quiz.png",
              ),
              MenuItem(
                title: "Music Quiz",
                imagePath: "icons/play_quiz/music_quiz.png",
              ),
              MenuItem(
                title: "English Quiz",
                imagePath: "icons/play_quiz/english_quiz.png",
              ),
              MenuItem(
                title: "Bangla Quiz",
                imagePath: "icons/play_quiz/bangla_quiz.png",
              ),
              MenuItem(
                title: "Riddle",
                imagePath: "icons/play_quiz/riddle.png",
              ),
            ]),
            SizedBox(height: 20),

            // THIRD GRID MENU
            SectionTitle("Promotions"),
            GridMenu(items: [
              MenuItem(
                title: "Boost Video",
                imagePath: "icons/promotions/boost_video.png",
              ),
              MenuItem(
                title: "Boost Traffic",
                imagePath: "icons/promotions/boost_traffic.png",
              ),
              MenuItem(
                title: "Get Follower",
                imagePath: "icons/promotions/get_followers_facebook.png",
              ),
              MenuItem(
                title: "Get Follower",
                imagePath: "icons/promotions/get_followers_twitter.png",
              ),
              MenuItem(
                title: "Get Follower",
                imagePath: "icons/promotions/get_followers_instagram.png",
              ),
              MenuItem(
                title: "Get Follower",
                imagePath: "icons/promotions/get_followers_tiktok.png",
              ),
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
}
