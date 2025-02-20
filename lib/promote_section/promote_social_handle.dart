import 'package:express_reward/promote_section/facebook.dart';
import 'package:express_reward/promote_section/instagram.dart';
import 'package:express_reward/promote_section/tiktok.dart';
import 'package:express_reward/promote_section/twitter.dart';
import 'package:express_reward/promote_section/youtube.dart';
import 'package:flutter/material.dart';

class PromoteSocialHandleScreen extends StatelessWidget {
  const PromoteSocialHandleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF0E0B29),
        appBar: AppBar(
          backgroundColor: const Color(0xFF0E0B29),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Promote Social handle',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.8,
            children: [
              socialButton(
                imagePath: "icons/promote_icons/facebook.png",
                color: const Color(0xFF1877F2),
                label: 'Facebook',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FacebookScreen()),
                  );
                },
              ),
              socialButton(
                imagePath: "icons/promote_icons/twitter.png",
                color: const Color(0xFF1DA1F2),
                label: 'Twitter',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TwitterScreen()),
                  );
                },
              ),
              socialButton(
                imagePath: "icons/promote_icons/instagram.png",
                color: const Color(0xFFC13584),
                label: 'Instagram',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InstagramScreen()),
                  );
                },
              ),
              socialButton(
                imagePath: "icons/promote_icons/tiktok.png",
                color: Colors.black,
                label: 'TikTok',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TiktokScreen()),
                  );
                },
              ),
              socialButton(
                imagePath: "icons/promote_icons/youtube.png",
                color: Colors.red,
                label: 'YouTube',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => YoutubeScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget socialButton({
    required String imagePath,
    required Color color,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF19153E),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
