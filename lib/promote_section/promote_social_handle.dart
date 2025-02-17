import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      home: PromoteSocialHandle(),
    );
  }
}

class PromoteSocialHandle extends StatelessWidget {
  const PromoteSocialHandle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF0E0B29),
        appBar: AppBar(
          backgroundColor: const Color(0xFF0E0B29),
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          title: const Text(
            'Promote Social handle',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: [
              socialButton(
                icon: FontAwesomeIcons.facebook,
                color: const Color(0xFF1877F2),
                label: 'Facebook',
              ),
              socialButton(
                icon: FontAwesomeIcons.twitter,
                color: const Color(0xFF1DA1F2),
                label: 'Twitter',
              ),
              socialButton(
                icon: FontAwesomeIcons.instagram,
                color: const Color(0xFFC13584),
                label: 'Instagram',
              ),
              socialButton(
                icon: FontAwesomeIcons.tiktok,
                color: Colors.black,
                label: 'TikTok',
              ),
              socialButton(
                icon: FontAwesomeIcons.youtube,
                color: Colors.red,
                label: 'YouTube',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget socialButton(
      {required IconData icon, required Color color, required String label}) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF19153E),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            icon,
            color: color,
            size: 40,
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
