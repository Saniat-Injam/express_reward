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
      home: BkashWithdrawScreen(),
    );
  }
}

class BkashWithdrawScreen extends StatelessWidget {
  const BkashWithdrawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1531),
      appBar: AppBar(
        backgroundColor: Color(0xFF1A1531),
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.white),
        title: Text("bkash Withdraw", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            SizedBox(height: 20),
            _buildInputField(Icons.lock, "Name", "Tahmid Abdullah"),
            SizedBox(height: 10),
            _buildInputField(Icons.email, "Email", "Tahmid123@Gmail.Com",
                enabled: false),
            SizedBox(height: 10),
            _buildInputField(
                Icons.phone, "BKash Account Number", "01712-345 678",
                enabled: false),
            SizedBox(height: 10),
            _buildInputField(Icons.attach_money, "Withdraw Value", "\$2345.00",
                enabled: false),
            SizedBox(height: 20),
            _buildWithdrawButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Withdraw Securely Through ",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Row(
            children: [
              Text("b",
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              Text("Kash",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              SizedBox(width: 5),
              Icon(Icons.payments, color: Colors.pink),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInputField(IconData icon, String label, String value,
      {bool enabled = true}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.white70, size: 18),
            SizedBox(width: 5),
            Text(label, style: TextStyle(color: Colors.white70)),
          ],
        ),
        SizedBox(height: 5),
        TextField(
          enabled: enabled,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black.withOpacity(0.2),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.green),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          ),
          controller: TextEditingController(text: value),
        ),
      ],
    );
  }

  Widget _buildWithdrawButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {},
        child: Text("Withdraw Request",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
