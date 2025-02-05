import 'package:express_reward/custom/bottom_navbar.dart';
import 'package:express_reward/custom/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EarnScreen extends StatelessWidget {
  final List<MenuItem> items = [
    MenuItem("Daily Check",
        imagePath: "icons/quick_earning/daily_check.png",
        subtitle: "Claim your deily free reward"),
    MenuItem("Play Quiz",
        imagePath: "icons/earn/play_quiz.png",
        subtitle: "Earn rewards by playing quiz"),
    MenuItem("Riddle",
        imagePath: "icons/play_quiz/riddle.png",
        subtitle: "Earn rewards by playing riddle"),
    MenuItem("Reading News",
        imagePath: "icons/quick_earning/reading_news.png",
        subtitle: "Earn reward by reading news"),
    MenuItem("Watch Video",
        imagePath: "icons/quick_earning/watch_video.png",
        subtitle: "Earn rewards by watch video"),
    MenuItem("Scratch Card",
        imagePath: "icons/quick_earning/scratch_card.png",
        subtitle: "Earn rewards by scratching card"),
    MenuItem("Spin Wheel",
        imagePath: "icons/quick_earning/spin_wheel.png",
        subtitle: "Refer app and earn both"),
    MenuItem("Follow Profiles",
        imagePath: "icons/earn/follow_profiles.png",
        subtitle: "Follow and earn"),
    MenuItem("Refer App",
        imagePath: "icons/quick_earning/refer_app.png",
        subtitle: "Refer app and earn both"),
  ];

  EarnScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 1.6,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Container(
              decoration: BoxDecoration(
                color: Color(0xff1D1B42),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (item.imagePath != null)
                    Image.asset(item.imagePath!) // Asset Icon
                  else
                    Icon(item.icon,
                        color: item.color, size: 30), // Default Icon

                  SizedBox(height: 8),
                  Text(
                    item.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    // style: GoogleFonts.poppins(
                    //   color: Colors.white,
                    //   fontSize: 14,
                    // ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    item.subtitle ?? "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
