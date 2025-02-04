import 'package:express_reward/custom/grid_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom/bottom_navbar.dart';

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
            SectionTitle("Quick Earning"),
            GridMenu(items: [
              MenuItem("Daily Check", Icons.access_time, Colors.blue),
              MenuItem("Watch Video", Icons.play_circle_fill, Colors.purple),
              MenuItem("Scratch Card", Icons.credit_card, Colors.pink),
              MenuItem("Spin Wheel", Icons.casino, Colors.indigo),
              MenuItem("Reading News", Icons.article, Colors.green),
              MenuItem("Refer App", Icons.share, Colors.red),
            ]),
            SizedBox(height: 20),
            SectionTitle("Play Quiz"),
            GridMenu(items: [
              MenuItem("Trending 2024", Icons.whatshot, Colors.orange),
              MenuItem("Sports Quiz", Icons.sports_soccer, Colors.purple),
              MenuItem("Music Quiz", Icons.music_note, Colors.pink),
              MenuItem("English Quiz", Icons.book, Colors.blue),
              MenuItem("Bangla Quiz", Icons.book_online, Colors.green),
              MenuItem("Riddle", Icons.extension, Colors.red),
            ]),
            SizedBox(height: 20),
            SectionTitle("Promotions"),
            GridMenu(items: [
              MenuItem("Boost Video", Icons.ondemand_video, Colors.red),
              MenuItem("Boost Traffic", Icons.public, Colors.orange),
              MenuItem("Get Follower", Icons.facebook, Colors.blue),
              MenuItem("Get Follower", Icons.group, Colors.blueAccent),
              MenuItem("Get Follower", Icons.camera_alt, Colors.purple),
              MenuItem("Get Follower", Icons.tiktok, Colors.black),
            ]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class MenuItem {
  final String title;
  final IconData icon;
  final Color color;

  MenuItem(this.title, this.icon, this.color);
}
