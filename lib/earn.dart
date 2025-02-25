import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Earn_section/daily_check_screen.dart';
import 'Earn_section/play_quiz_screen.dart';

class MenuItem {
  final String imagePath;
  final String title;
  final String subtitle;
  final Widget screen;
  final IconData? icon;
  final Color? color;

  MenuItem({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.screen,
    this.icon,
    this.color,
  });
}

class EarnScreen extends StatelessWidget {
  final List<MenuItem> items = [
    MenuItem(
      imagePath: "icons/earn_icons/daily_check.png",
      title: "Daily Check",
      subtitle: "Claim your deily free reward",
      screen: DailyCheckScreen(),
    ),
    MenuItem(
      imagePath: "icons/earn_icons/play_quiz.png",
      title: "Play Quiz",
      subtitle: "Earn rewards by playing quiz",
      screen: PlayQuizScreen(),
    ),
    MenuItem(
      imagePath: "icons/earn_icons/riddle.png",
      title: "Riddle",
      subtitle: "Earn rewards by playing riddle",
      screen: DailyCheckScreen(),
    ),
    MenuItem(
      imagePath: "icons/earn_icons/reading_news.png",
      title: "Reading News",
      subtitle: "Earn reward by reading news",
      screen: DailyCheckScreen(),
    ),
    MenuItem(
      imagePath: "icons/earn_icons/watch_video.png",
      title: "Watch Video",
      subtitle: "Earn rewards by watch video",
      screen: DailyCheckScreen(),
    ),
    MenuItem(
      imagePath: "icons/earn_icons/scratch_card.png",
      title: "Scratch Card",
      subtitle: "Earn rewards by scratching card",
      screen: DailyCheckScreen(),
    ),
    MenuItem(
      imagePath: "icons/earn_icons/spin_wheel.png",
      title: "Spin Wheel",
      subtitle: "Refer app and earn both",
      screen: DailyCheckScreen(),
    ),
    MenuItem(
      imagePath: "icons/earn_icons/follow_profiles.png",
      title: "Follow Profiles",
      subtitle: "Follow and earn",
      screen: DailyCheckScreen(),
    ),
    MenuItem(
      imagePath: "icons/earn_icons/refer_app.png",
      title: "Refer App",
      subtitle: "Refer app and earn both",
      screen: DailyCheckScreen(),
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
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => item.screen),
                );
              },
              child: Container(
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
                      item.subtitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
