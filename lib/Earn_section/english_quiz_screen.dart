import 'package:flutter/material.dart';
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
      home: BanglaQuizScreen(),
    );
  }
}

class BanglaQuizScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      'imgPath': "icons/earn_icons/english_quiz_icons/botany.png",
      'title': 'Botany',
    },
    {
      'imgPath': "icons/earn_icons/english_quiz_icons/chemistry.png",
      'title': 'Chemistry',
    },
    {
      'imgPath': "icons/earn_icons/english_quiz_icons/english_grammar.png",
      'title': 'English Grammar',
    },
    {
      'imgPath':
          "icons/earn_icons/english_quiz_icons/english_international.png",
      'title': 'English International',
    },
    {
      'imgPath': "icons/earn_icons/english_quiz_icons/geography.png",
      'title': 'Geography',
    },
    {
      'imgPath': "icons/earn_icons/english_quiz_icons/history.png",
      'title': 'History',
    },
    {
      'imgPath': "icons/earn_icons/english_quiz_icons/mathematics.png",
      'title': 'Mathematics',
    },
    {
      'imgPath': "icons/earn_icons/english_quiz_icons/science.png",
      'title': 'Science',
    },
    {
      'imgPath': "icons/earn_icons/english_quiz_icons/social_science.png",
      'title': 'Social Science',
    },
    {
      'imgPath': "icons/earn_icons/english_quiz_icons/social_science.png",
      'title': 'Trade',
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
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text(
          'English Quiz',
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
            'Play and win rewards',
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
