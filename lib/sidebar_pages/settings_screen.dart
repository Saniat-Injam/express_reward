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
      home: SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isNotificationOn = false;
  String selectedTheme = 'System';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D0C22),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1D1B42),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            // Go back
          },
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Notification',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                isNotificationOn ? 'On' : 'Off',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              value: isNotificationOn,
              onChanged: (bool value) {
                setState(() {
                  isNotificationOn = value;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Theme',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            RadioListTile<String>(
              contentPadding: EdgeInsets.zero,
              activeColor: Colors.greenAccent,
              title: const Text(
                'Light',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              value: 'Light',
              groupValue: selectedTheme,
              onChanged: (String? value) {
                setState(() {
                  selectedTheme = value!;
                });
              },
            ),
            RadioListTile<String>(
              contentPadding: EdgeInsets.zero,
              activeColor: Color(0xFF00EA7A),
              title: const Text(
                'Dark',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              value: 'Dark',
              groupValue: selectedTheme,
              onChanged: (String? value) {
                setState(() {
                  selectedTheme = value!;
                });
              },
            ),
            RadioListTile<String>(
              contentPadding: EdgeInsets.zero,
              activeColor: Colors.greenAccent,
              title: const Text(
                'System',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              value: 'System',
              groupValue: selectedTheme,
              onChanged: (String? value) {
                setState(() {
                  selectedTheme = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
