import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuItem {
  final String imagePath;
  final String title;
  final String subtitle;
  final IconData? icon;
  final Color? color;

  MenuItem({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.icon,
    this.color,
  });
}

class EarnScreen extends StatelessWidget {
  final List<MenuItem> items = [
    MenuItem(
      title: "Daily Check",
      imagePath: "icons/earn_icons/daily_check.png",
      subtitle: "Claim your deily free reward",
    ),
    MenuItem(
      title: "Play Quiz",
      imagePath: "icons/earn_icons/play_quiz.png",
      subtitle: "Earn rewards by playing quiz",
    ),
    MenuItem(
      title: "Riddle",
      imagePath: "icons/earn_icons/riddle.png",
      subtitle: "Earn rewards by playing riddle",
    ),
    MenuItem(
      title: "Reading News",
      imagePath: "icons/earn_icons/reading_news.png",
      subtitle: "Earn reward by reading news",
    ),
    MenuItem(
      title: "Watch Video",
      imagePath: "icons/earn_icons/watch_video.png",
      subtitle: "Earn rewards by watch video",
    ),
    MenuItem(
      title: "Scratch Card",
      imagePath: "icons/earn_icons/scratch_card.png",
      subtitle: "Earn rewards by scratching card",
    ),
    MenuItem(
      title: "Spin Wheel",
      imagePath: "icons/earn_icons/spin_wheel.png",
      subtitle: "Refer app and earn both",
    ),
    MenuItem(
      title: "Follow Profiles",
      imagePath: "icons/earn_icons/follow_profiles.png",
      subtitle: "Follow and earn",
    ),
    MenuItem(
      title: "Refer App",
      imagePath: "icons/earn_icons/refer_app.png",
      subtitle: "Refer app and earn both",
    ),
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
                  Image.asset(item.imagePath),
                  SizedBox(height: 8),
                  Text(
                    item.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
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
    );
  }
}
