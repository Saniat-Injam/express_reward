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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                accountName: Text('Tahmid Abdullah',
                    style: TextStyle(color: Colors.white)),
                accountEmail:
                    Text('Upgrade', style: TextStyle(color: Colors.grey)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
              ),
              _drawerItem(Icons.card_membership, 'Membership'),
              _drawerItem(Icons.leaderboard, 'Leaderboard'),
              _drawerItem(Icons.campaign, 'Promotion'),
              _drawerItem(Icons.share, 'Refer App'),
              _drawerItem(Icons.star, 'Rate Us'),
              _drawerItem(Icons.privacy_tip, 'Privacy Policy'),
              _drawerItem(Icons.article, 'Terms & Conditions'),
              _drawerItem(Icons.delete, 'Delete Account'),
              _drawerItem(Icons.info, 'About'),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Express Reward', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(),
          onPressed: () => _showLogoutDialog(context),
          child: Text('Log Out'),
        ),
      ),
    );
  }

  ListTile _drawerItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.green),
      title: Text(title, style: TextStyle(color: Colors.white)),
      onTap: () {},
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          title: Text('Are You Really Want To Log Out?',
              style: TextStyle(color: Colors.white)),
          actions: [
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () => Navigator.of(context).pop(),
              child: Text('No', style: TextStyle(color: Colors.black)),
            ),
            TextButton(
              style:
                  TextButton.styleFrom(side: BorderSide(color: Colors.green)),
              onPressed: () {},
              child: Text('Yes', style: TextStyle(color: Colors.green)),
            ),
          ],
        );
      },
    );
  }
}
