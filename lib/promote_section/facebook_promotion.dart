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
      home: FacebookPromotionScreen(),
    );
  }
}

class FacebookPromotionScreen extends StatefulWidget {
  const FacebookPromotionScreen({super.key});

  @override
  FacebookPromotionScreenState createState() => FacebookPromotionScreenState();
}

class FacebookPromotionScreenState extends State<FacebookPromotionScreen> {
  final TextEditingController accountNameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController followersController = TextEditingController();
  final TextEditingController costController = TextEditingController();

  @override
  void initState() {
    super.initState();
    accountNameController.text = "Tahmid Abdullah";
    usernameController.text = "Tahmid123";
    followersController.text = "5000";
    costController.text = "\$5.00";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF14122C), // Dark background color
      appBar: AppBar(
        backgroundColor: Color(0xFF14122C),
        elevation: 0,
        title: Text("Facebook", style: TextStyle(fontSize: 18)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTextField("Facebook Account Name", accountNameController),
            SizedBox(height: 12),
            buildTextField(
                "Facebook Account Link Or User Name", usernameController),
            SizedBox(height: 12),
            buildTextField("Total Followers", followersController),
            SizedBox(height: 12),
            buildTextField("Total Cost", costController),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Handle payment action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                "Pay Now",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        SizedBox(height: 5),
        TextField(
          controller: controller,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFF1E1C40),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          ),
        ),
      ],
    );
  }
}
