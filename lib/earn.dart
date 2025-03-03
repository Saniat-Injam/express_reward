import 'package:express_reward/Earn_section/invite.dart';
import 'package:express_reward/Earn_section/promote_social_handle.dart';
import 'package:express_reward/Earn_section/reading_news.dart';
import 'package:express_reward/Earn_section/reward_dialog_screen.dart';
import 'package:express_reward/Earn_section/riddle.dart';
import 'package:express_reward/Earn_section/watch_video.dart';
import 'package:express_reward/custom_section/topbar.dart';
import 'package:flutter/material.dart';
import 'Earn_section/play_quiz_screen.dart';

class MenuItem {
  final String imagePath;
  final String title;
  final String subtitle;
  final Widget? screen;

  MenuItem({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.screen,
  });
}

class EarnScreen extends StatefulWidget {
  const EarnScreen({super.key});

  @override
  State<EarnScreen> createState() => _EarnScreenState();
}

class _EarnScreenState extends State<EarnScreen> {
  final List<MenuItem> items = [
    MenuItem(
      imagePath: "icons/earn_icons/daily_check.png",
      title: "Daily Check",
      subtitle: "Claim your deily free reward",
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
      screen: RiddleScreen(),
    ),
    MenuItem(
      imagePath: "icons/earn_icons/reading_news.png",
      title: "Reading News",
      subtitle: "Earn reward by reading news",
      screen: ReadingNewsScreen(),
    ),
    MenuItem(
      imagePath: "icons/earn_icons/watch_video.png",
      title: "Watch Video",
      subtitle: "Earn rewards by watch video",
      screen: WatchVideoScreen(),
    ),
    MenuItem(
      imagePath: "icons/earn_icons/scratch_card.png",
      title: "Scratch Card",
      subtitle: "Earn rewards by scratching card",
      screen: PlayQuizScreen(),
    ),
    MenuItem(
      imagePath: "icons/earn_icons/spin_wheel.png",
      title: "Spin Wheel",
      subtitle: "Refer app and earn both",
      screen: PlayQuizScreen(),
    ),
    MenuItem(
      imagePath: "icons/earn_icons/follow_profiles.png",
      title: "Follow Profiles",
      subtitle: "Follow and earn",
      screen: PromoteSocialHandleScreen(),
    ),
    MenuItem(
      imagePath: "icons/earn_icons/refer_app.png",
      title: "Refer App",
      subtitle: "Refer app and earn both",
      screen: ReferAppScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff04031A),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(68.0),
          child: const TopBar(),
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
                  if (item.title == "Daily Check") {
                    showRewardDialog(context);
                  } else if (item.screen != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => item.screen!,
                      ),
                    );
                  }
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
      ),
    );
  }
}
