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
      home: MissionsScreen(),
    );
  }
}

class MissionsScreen extends StatelessWidget {
  const MissionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D0C22),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1B42),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        title: const Text(
          'Missions',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            _buildMissionCard('Refer 5 Friends', 3, 5, 0.50, true),
            _buildMissionCard('Refer 10 Friends', 3, 10, 1.00, false),
            _buildMissionCard('Refer 20 Friends', 3, 20, 2.50, false),
            _buildMissionCard('Refer 50 Friends', 3, 50, 10.00, false),
            _buildMissionCard('Refer 100 Friends', 3, 100, 30.00, false),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person_add), label: 'Invite'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Missions'),
          BottomNavigationBarItem(
              icon: Icon(Icons.share), label: 'My Referral'),
        ],
      ),
    );
  }

  Widget _buildMissionCard(
      String title, int invited, int target, double reward, bool unlocked) {
    return Card(
      color: Color(0xFF1D1B42),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Color(0xFF00EA7A),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('\$${reward.toStringAsFixed(2)}',
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(unlocked ? Icons.people : Icons.lock, color: Colors.grey),
                const SizedBox(width: 5),
                Text('$invited/$target Invited',
                    style: const TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: invited / target,
              backgroundColor: Colors.grey[700],
              color: Color(0xFF00EA7A),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xFF00EA7A),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.access_time, color: Colors.black, size: 16),
                  SizedBox(width: 5),
                  Text('May 24, 2024 - June 12, 2024',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
