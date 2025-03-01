import 'package:express_reward/Earn_section/reward_dialog_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Earn_section/play_quiz_screen.dart';
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
      home: const EarnScreen(),
    );
  }
}

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
  EarnScreenState createState() => EarnScreenState();
}

class EarnScreenState extends State<EarnScreen> {
  late final List<MenuItem> items = [
    MenuItem(
      imagePath: "icons/earn_icons/daily_check.png",
      title: "Daily Check",
      subtitle: "Claim your daily free reward",
    ),
    MenuItem(
      imagePath: "icons/earn_icons/play_quiz.png",
      title: "Play Quiz",
      subtitle: "Earn rewards by playing quiz",
      screen: PlayQuizScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff04031A),
      appBar: AppBar(
        backgroundColor: const Color(0xff1D1B42),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Row(
          children: [
            const Icon(Icons.monetization_on, color: Colors.green),
            const SizedBox(width: 4),
            const Text(
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
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xff04031A),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text("\$1245.90",
                style: GoogleFonts.poppins(color: Colors.lightGreenAccent)),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.notifications, color: Colors.white),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                  color: const Color(0xff1D1B42),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(item.imagePath),
                    const SizedBox(height: 8),
                    Text(
                      item.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item.subtitle,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
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
