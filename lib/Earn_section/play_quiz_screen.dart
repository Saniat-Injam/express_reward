import 'package:express_reward/Earn_section/bangla_quiz_screen.dart';
import 'package:express_reward/Earn_section/english_quiz_screen.dart';
import 'package:express_reward/Earn_section/riddle.dart';
import 'package:flutter/material.dart';

class PlayQuizScreen extends StatelessWidget {
  const PlayQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0C22),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1D1B42),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Play Quiz",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            QuizCard(
              imgpath: "icons/earn_icons/play_quiz_icons/english_quiz.png",
              title: "English Quiz",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EnglishQuizScreen(),
                  ),
                );
              },
            ),
            QuizCard(
              imgpath: "icons/earn_icons/play_quiz_icons/bangla_quiz.png",
              title: "Bangla Quiz",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BanglaQuizScreen(),
                  ),
                );
              },
            ),
            QuizCard(
              imgpath: "icons/earn_icons/play_quiz_icons/riddle.png",
              title: "Riddle",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RiddleScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class QuizCard extends StatelessWidget {
  final String imgpath;
  final String title;
  final VoidCallback onTap;

  const QuizCard({
    required this.imgpath,
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF1D1B42),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Image.asset(imgpath),
            // CircleAvatar(
            //   backgroundColor: color,
            //   radius: 22,
            //   child: Icon(
            //     icon,
            //     color: Colors.white,
            //   ),
            // ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "In Order To Promote, You Have To Pay",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
