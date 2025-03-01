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
      home: MyReferralScreen(),
    );
  }
}

class MyReferralScreen extends StatelessWidget {
  const MyReferralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D0C22),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1B42),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        title: Text(
          'My Referral',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: StatCard(
                    title: 'Total Refer',
                    value: '5',
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: StatCard(
                    title: 'Pending Refer',
                    value: '10',
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: StatCard(
                    title: 'Total Earn',
                    value: '\$5.20',
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'People You Referred',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            ReferralCard(
              imgPath: "icons/earn_icons/my_refer_icons/laura_frea.png",
              name: 'Laura Frea',
              date: '23 Mar 2024',
            ),
            ReferralCard(
              imgPath: "icons/earn_icons/my_refer_icons/dindola_harp.png",
              name: 'Dindola Harp',
              date: '22 Mar 2024',
            ),
            ReferralCard(
              imgPath: "icons/earn_icons/my_refer_icons/samanta_sana.png",
              name: 'Samanta Sana',
              date: '13 Mar 2024',
            ),
            ReferralCard(
              imgPath: "icons/earn_icons/my_refer_icons/jon_doe.png",
              name: 'Jon Doe',
              date: '4 Mar 2024',
            ),
            ReferralCard(
              imgPath: "icons/earn_icons/my_refer_icons/luis_fonsi.png",
              name: 'Luis Fonsi',
              date: '3 Mar 2024',
            ),
            Spacer(),
            BottomNavigationBar(
              backgroundColor: Color(0xFF1B1450),
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_add), label: 'Invite'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.flag), label: 'Missions'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'My Referral'),
              ],
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.white,
              currentIndex: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String title;
  final String value;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xFF1D1B42),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            value,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF737686),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class ReferralCard extends StatelessWidget {
  final String imgPath;
  final String name;
  final String date;

  const ReferralCard({
    super.key,
    required this.imgPath,
    required this.name,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFF1D1B42),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(imgPath),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(height: 4),
              Text(
                'Joined $date',
                style: TextStyle(
                  color: Color(0xFF737686),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
