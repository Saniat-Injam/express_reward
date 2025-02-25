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
      home: WatchVideoScreen(),
    );
  }
}

class WatchVideoScreen extends StatelessWidget {
  final List<Map<String, String>> videos = [
    {"title": "ঘুরে আসি জাফলং...", "time": "30 Sec", "earn": "+\$0.009"},
    {"title": "How To Use AI", "time": "50 Sec", "earn": "+\$0.009"},
    {"title": "5 Best Salad For...", "time": "34 Sec", "earn": "+\$0.009"},
    {"title": "বাংলার ইতিহাস", "time": "20 Sec", "earn": "+\$0.009"},
    {"title": "নবাব কে ছিলেন?", "time": "33 Sec", "earn": "+\$0.009"},
  ];

  WatchVideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text("Watch Video"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: videos.length,
          itemBuilder: (context, index) {
            final video = videos[index];
            return VideoTile(
              title: video["title"]!,
              time: video["time"]!,
              earn: video["earn"]!,
            );
          },
        ),
      ),
    );
  }
}

class VideoTile extends StatelessWidget {
  final String title;
  final String time;
  final String earn;

  const VideoTile({
    super.key,
    required this.title,
    required this.time,
    required this.earn,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF1A1A2E),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(Icons.play_circle_fill, color: Colors.purple, size: 40),
        title: Text(title, style: TextStyle(fontSize: 16, color: Colors.white)),
        subtitle: Row(
          children: [
            Icon(Icons.access_time, size: 14, color: Colors.grey),
            SizedBox(width: 5),
            Text(time, style: TextStyle(color: Colors.grey)),
          ],
        ),
        trailing: Text(
          earn,
          style: TextStyle(
              color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
