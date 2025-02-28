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
      home: ReadingNewsScreen(),
    );
  }
}

class ReadingNewsScreen extends StatelessWidget {
  final List<Map<String, String>> newsItems = [
    {'title': 'Political Turmoil...', 'source': 'The Daily Inqilab'},
    {'title': 'How To Use AI', 'source': 'The Daily Star'},
    {'title': '5 Best Salad For...', 'source': 'The Daily Star'},
    {'title': 'বাংলার ইতিহাস', 'source': 'The Daily Inqilab'},
    {'title': 'নবাব কে ছিলেন?', 'source': 'The Daily Inqilab'},
  ];

  ReadingNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D0C22),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1B42),
        title: Text(
          'Reading News',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: newsItems.length,
          itemBuilder: (context, index) {
            return NewsTile(
              title: newsItems[index]['title']!,
              source: newsItems[index]['source']!,
            );
          },
        ),
      ),
    );
  }
}

class NewsTile extends StatelessWidget {
  final String title;
  final String source;

  const NewsTile({super.key, required this.title, required this.source});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xFF1D1B42),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //Icon(Icons.article, color: Colors.greenAccent),
              Image.asset(
                  "icons/earn_icons/reading_news_icons/reading_news.png"),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 16,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '30 Sec | $source',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Text(
            '+\$0.009',
            style: TextStyle(
              color: Color(0xFF00EA7A),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
