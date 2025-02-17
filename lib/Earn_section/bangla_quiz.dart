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
      home: QuizHomePage(),
    );
  }
}

class QuizHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'title': 'ইতিহাস', 'icon': Icons.menu_book, 'color': Colors.purple},
    {'title': 'উদ্ভিদ বিজ্ঞান', 'icon': Icons.eco, 'color': Colors.green},
    {'title': 'গণিত', 'icon': Icons.calculate, 'color': Colors.red},
    {'title': 'বাংলা সাহিত্য', 'icon': Icons.article, 'color': Colors.blue},
    {
      'title': 'বাংলা ব্যাকরণ',
      'icon': Icons.sort_by_alpha,
      'color': Colors.pink
    },
    {'title': 'বাণিজ্য', 'icon': Icons.show_chart, 'color': Colors.orange},
    {'title': 'বিজ্ঞান', 'icon': Icons.science, 'color': Colors.purpleAccent},
    {'title': 'ভূগোল', 'icon': Icons.public, 'color': Colors.teal},
    {'title': 'রসায়ন', 'icon': Icons.biotech, 'color': Colors.deepOrange},
    {'title': 'সামাজিক বিজ্ঞান', 'icon': Icons.group, 'color': Colors.purple},
  ];

  QuizHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bangla Quiz'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return QuizCategoryCard(
              title: categories[index]['title'],
              icon: categories[index]['icon'],
              color: categories[index]['color'],
            );
          },
        ),
      ),
    );
  }
}

class QuizCategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const QuizCategoryCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon(icon, color: Colors.white, size: 30),
          ),
          SizedBox(height: 12.0),
          Text(
            title,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            'খেলুন এবং পুরস্কার জিতুন',
            style: TextStyle(fontSize: 14.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
