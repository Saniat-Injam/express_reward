import 'package:express_reward/Earn_section/promote_social_handle/facebook_rewards.dart';
import 'package:express_reward/Earn_section/promote_social_handle/instagram_rewards.dart';
import 'package:express_reward/Earn_section/promote_social_handle/tiktok_rewards.dart';
import 'package:express_reward/Earn_section/promote_social_handle/twitter_rewards.dart';
import 'package:express_reward/Earn_section/promote_social_handle/youtube_rewards.dart';
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
                imagePath:
                    "icons/earn_icons/promote_social_handle_icons/facebook.png",
                color: const Color(0xFF1877F2),
                label: 'Facebook',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FacebookRewardsScreen(),
                    ),
                  );
                },
              ),
              socialButton(
                imagePath:
                    "icons/earn_icons/promote_social_handle_icons/twitter.png",
                color: const Color(0xFF1DA1F2),
                label: 'Twitter',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TwitterRewardsScreen()),
                  );
                },
              ),
              socialButton(
                imagePath:
                    "icons/earn_icons/promote_social_handle_icons/instagram.png",
                color: const Color(0xFFC13584),
                label: 'Instagram',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InstagramRewardsScreen()),
                  );
                },
              ),
              socialButton(
                imagePath:
                    "icons/earn_icons/promote_social_handle_icons/tiktok.png",
                color: Colors.black,
                label: 'TikTok',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TiktokRewardsScreen()),
                  );
                },
              ),
              socialButton(
                imagePath:
                    "icons/earn_icons/promote_social_handle_icons/youtube.png",
                color: Colors.red,
                label: 'YouTube',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => YoutubeRewardsScreen()),
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
