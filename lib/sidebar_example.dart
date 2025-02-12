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
      home: Sidebar(),
    );
  }
}

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF121027),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF121027),
            ),
            accountName: Text(
              "Tahmid Abdullah",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            accountEmail: Row(
              children: [
                Text(
                  "Upgrade",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 5),
                Icon(Icons.emoji_events, color: Colors.grey, size: 18),
              ],
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildDrawerItem(Icons.card_membership, "Membership"),
                _buildDrawerItem(Icons.leaderboard, "Leaderboard"),
                _buildDrawerItem(Icons.campaign, "Promotion"),
                _buildDrawerItem(Icons.share, "Refer App"),
                _buildDrawerItem(Icons.settings, "Settings"),
                _buildDrawerItem(Icons.help, "FAQs"),
                _buildDrawerItem(Icons.share, "Share App"),
                _buildDrawerItem(Icons.star, "Rate Us"),
                Divider(color: Colors.grey[700]),
                _buildDrawerItem(Icons.privacy_tip, "Privacy Policy"),
                _buildDrawerItem(Icons.description, "Terms & Conditions"),
                _buildDrawerItem(Icons.delete, "Delete Account",
                    color: Colors.red),
                _buildDrawerItem(Icons.info, "About"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Version: 1.3",
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(Icons.logout, color: Colors.greenAccent),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title,
      {Color color = Colors.white}) {
    return ListTile(
      leading: Icon(icon, color: Colors.greenAccent),
      title: Text(
        title,
        style: TextStyle(color: color, fontSize: 16),
      ),
      onTap: () {
        // Handle navigation
      },
    );
  }
}
