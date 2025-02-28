import 'package:flutter/material.dart';

class BanglaQuizScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      'imgPath': "icons/earn_icons/bangla_quiz_icons/itihas.png",
      'title': 'ইতিহাস',
    },
    {
      'imgPath': "icons/earn_icons/bangla_quiz_icons/udvid_biggan.png",
      'title': 'উদ্ভিদ বিজ্ঞান',
    },
    {
      'imgPath': "icons/earn_icons/bangla_quiz_icons/gonit.png",
      'title': 'গণিত',
    },
    {
      'imgPath': "icons/earn_icons/bangla_quiz_icons/bangla_sahitto.png",
      'title': 'বাংলা সাহিত্য',
    },
    {
      'imgPath': "icons/earn_icons/bangla_quiz_icons/bangla_bekaron.png",
      'title': 'বাংলা ব্যাকরণ',
    },
    {
      'imgPath': "icons/earn_icons/bangla_quiz_icons/banijjo.png",
      'title': 'বাণিজ্য',
    },
    {
      'imgPath': "icons/earn_icons/bangla_quiz_icons/biggan.png",
      'title': 'বিজ্ঞান',
    },
    {
      'imgPath': "icons/earn_icons/bangla_quiz_icons/vugol.png",
      'title': 'ভূগোল',
    },
    {
      'imgPath': "icons/earn_icons/bangla_quiz_icons/rosayon.png",
      'title': 'রসায়ন',
    },
    {
      'imgPath': "icons/earn_icons/bangla_quiz_icons/samajik_biggan.png",
      'title': 'সামাজিক বিজ্ঞান',
    },
  ];

  BanglaQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0C22),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1D1B42),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Bangla Quiz',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1.4,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return QuizCategoryCard(
              title: categories[index]['title'],
              icon: categories[index]['icon'],
              color: categories[index]['color'],
              imgPath: categories[index]['imgPath'],
            );
          },
        ),
      ),
    );
  }
}

class QuizCategoryCard extends StatelessWidget {
  final String title;
  final String imgPath;
  final IconData? icon;
  final Color? color;

  const QuizCategoryCard({
    super.key,
    required this.title,
    required this.imgPath,
    this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1D1B42),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imgPath),
          SizedBox(height: 12.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'খেলুন এবং পুরস্কার জিতুন',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
