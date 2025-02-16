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
      home: StandardPlanScreen(),
    );
  }
}

class StandardPlanScreen extends StatelessWidget {
  const StandardPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D0c22),
      appBar: AppBar(
        backgroundColor: Color(0xff1D1B42),
        elevation: 0,
        title: Text("Standard", style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFF222042), // Card background
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.crop, color: Colors.white, size: 30),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Standard",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Earning rate Increase 20%",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  SizedBox(height: 15),
                  Divider(color: Colors.grey[700]),
                  _featureItem("Boost Earning 20%"),
                  _featureItem("Earn Badge"),
                  _featureItem("First Withdraw"),
                  _featureItem("No Earning Limits"),
                  _featureItem("Support 24/7"),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff00EA7A),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                // Handle Buy Action
              },
              child: Text(
                "Buy \$5.00",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _featureItem(String text) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      //leading: Icon(Icons.radio_button_checked, color: Colors.blue, size: 18),
      leading:
          Image.asset("icons/sidebar_icons/membership_icons/blue_logo.png"),
      title: Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
    );
  }
}
