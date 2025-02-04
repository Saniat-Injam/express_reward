import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom/bottom_navbar.dart';
import 'package:express_reward/custom/grid_menu.dart';
import 'package:express_reward/custom/selection_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff04031A),
      appBar: AppBar(
        backgroundColor: Color(0xff1D1B42),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
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

      // BOTTOM NAVIGATION BAR HERE
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
