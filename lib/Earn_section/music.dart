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
      home: MusicScreen(),
    );
  }
}

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D0C22),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1B42),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        title: Text(
          'Sports',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _iconText(Icons.timer, '30 Sec'),
                _iconText(Icons.attach_money, '\$0.78'),
                _iconText(Icons.help_outline, 'Q. No. 5 Of 10'),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Color(0xFF1D1B42),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'What is the chemical signal of uranium?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 40),
            _answerButton('A.) Ur', Color(0xFF1D1B42), Colors.white),
            _answerButton('B.) U', Color(0xFF1D1B42), Colors.white),
            _answerButton('C.) Ui', Color(0xFF1D1B42), Colors.white),
            _answerButton('D.) Un', Color(0xFF1D1B42), Colors.white),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _actionButton('Skip', Color(0xFF1D1B42)),
                _actionButton('Next', Color(0xFF1D1B42)),
              ],
            ),
            SizedBox(height: 40),
            _actionButton('Stop Playing', Color(0xFF00EA7A), isLarge: true),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _iconText(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.green),
        SizedBox(width: 5),
        Text(text, style: TextStyle(color: Colors.white)),
      ],
    );
  }

  Widget _answerButton(String text, Color bgColor, Color textColor) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          padding: EdgeInsets.symmetric(vertical: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: () {},
        child: Text(text, style: TextStyle(color: textColor, fontSize: 16)),
      ),
    );
  }

  Widget _actionButton(String text, Color bgColor, {bool isLarge = false}) {
    return SizedBox(
      width: isLarge ? double.infinity : 150,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          padding: EdgeInsets.symmetric(vertical: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            //color: Color(0xFF0D0C22),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
