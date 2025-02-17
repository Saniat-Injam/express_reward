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
      home: LeaderboardScreen(),
    );
  }
}

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D0C22),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A1B42),
        title: const Text(
          'Leaderboard',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 0,
        centerTitle: false,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Top 3
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                podiumMember(
                  rank: "2nd",
                  name: "Lavis Don",
                  amount: "\$136.16",
                  imageUrl: "https://randomuser.me/api/portraits/men/44.jpg",
                  memberType: "Premium member",
                  badgeColor: Colors.green,
                ),
                podiumMember(
                  rank: "1st",
                  name: "Tahmid",
                  amount: "\$235.56",
                  imageUrl: "https://randomuser.me/api/portraits/men/45.jpg",
                  memberType: "Platinum member",
                  badgeColor: Colors.purple,
                  isHighlight: true,
                ),
                podiumMember(
                  rank: "3rd",
                  name: "Andrew Parle",
                  amount: "\$124.56",
                  imageUrl: "https://randomuser.me/api/portraits/men/46.jpg",
                  memberType: "Standard member",
                  badgeColor: Colors.blue,
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Other ranks
            ...List.generate(7, (index) {
              return leaderboardTile(
                rank: "${index + 4}",
                name: "User ${index + 4}",
                amount: "\$124.56",
                imageUrl:
                    "https://randomuser.me/api/portraits/men/${index + 50}.jpg",
                memberType:
                    index % 2 == 0 ? "Premium member" : "Standard member",
                badgeColor: index % 2 == 0 ? Colors.green : Colors.blue,
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget podiumMember({
    required String rank,
    required String name,
    required String amount,
    required String imageUrl,
    required String memberType,
    required Color badgeColor,
    bool isHighlight = false,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: isHighlight ? 50 : 40,
            backgroundColor: Colors.green,
            child: CircleAvatar(
              radius: isHighlight ? 46 : 36,
              backgroundImage: AssetImage(
                  "icons/sidebar_icons/leaderboard_icons/tahmid.png"),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: const TextStyle(color: Colors.white),
          ),
          Container(
            decoration: BoxDecoration(
              color: badgeColor,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: Text(
              memberType,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          Text(
            amount,
            style: const TextStyle(color: Colors.green, fontSize: 16),
          ),
          CircleAvatar(
            radius: 14,
            backgroundColor: Colors.orange,
            child: Text(
              rank,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }

  Widget leaderboardTile({
    required String rank,
    required String name,
    required String amount,
    required String imageUrl,
    required String memberType,
    required Color badgeColor,
  }) {
    return Card(
      color: const Color(0xFF2E2F58),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
        subtitle: Row(
          children: [
            Icon(
              Icons.crop,
              color: badgeColor,
              size: 14,
            ),
            const SizedBox(width: 4),
            Text(
              memberType,
              style: TextStyle(color: badgeColor, fontSize: 12),
            ),
          ],
        ),
        trailing: Text(
          amount,
          style: const TextStyle(color: Colors.green, fontSize: 16),
        ),
        leadingAndTrailingTextStyle:
            const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
