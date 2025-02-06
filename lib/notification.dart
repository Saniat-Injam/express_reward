import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {
      "title": "Payment Successful",
      "subtitle": "Your \$1234 Withdraw Payment Has Been Successful.",
      "time": "03:46pm"
    },
    {
      "title": "Withdraw Request Sent",
      "subtitle": "Your \$1234 Withdraw Request Has Been Sent.",
      "time": "03:46pm"
    },
    {
      "title": "New Update",
      "subtitle":
          "We Bring A Major Update On Our Profile Screen. Go And Check Out.",
      "time": "03:46pm"
    },
    {
      "title": "Payment Successful",
      "subtitle": "Your \$1234 Withdraw Payment Has Been Successful.",
      "time": "03:46pm"
    },
    {
      "title": "Withdraw Request Sent",
      "subtitle": "Your \$1234 Withdraw Request Has Been Sent.",
      "time": "03:46pm"
    },
    {
      "title": "New Update",
      "subtitle":
          "We Bring A Major Update On Our Profile Screen. Go And Check Out.",
      "time": "03:46pm"
    },
    {
      "title": "Payment Successful",
      "subtitle": "Your \$1234 Withdraw Payment Has Been Successful.",
      "time": "03:46pm"
    },
    {
      "title": "Withdraw Request Sent",
      "subtitle": "Your \$1234 Withdraw Request Has Been Sent.",
      "time": "03:46pm"
    },
    {
      "title": "New Update",
      "subtitle":
          "We Bring A Major Update On Our Profile Screen. Go And Check Out.",
      "time": "03:46pm"
    },
    {
      "title": "Payment Successful",
      "subtitle": "Your \$1234 Withdraw Payment Has Been Successful.",
      "time": "03:46pm"
    },
    {
      "title": "Withdraw Request Sent",
      "subtitle": "Your \$1234 Withdraw Request Has Been Sent.",
      "time": "03:46pm"
    },
    {
      "title": "New Update",
      "subtitle":
          "We Bring A Major Update On Our Profile Screen. Go And Check Out.",
      "time": "03:46pm"
    },
    {
      "title": "Payment Successful",
      "subtitle": "Your \$1234 Withdraw Payment Has Been Successful.",
      "time": "03:46pm"
    },
    {
      "title": "Withdraw Request Sent",
      "subtitle": "Your \$1234 Withdraw Request Has Been Sent.",
      "time": "03:46pm"
    },
    {
      "title": "New Update",
      "subtitle":
          "We Bring A Major Update On Our Profile Screen. Go And Check Out.",
      "time": "03:46pm"
    },
  ];

  NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff04031A),
      appBar: AppBar(
        backgroundColor: Color(0xff1D1B42),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Notification",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(8, 4, 8, 8),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                "This Withdraw History Is About Last One Year.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  final notification = notifications[index];
                  return NotificationTile(
                    title: notification['title']!,
                    subtitle: notification['subtitle']!,
                    time: notification['time']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// CARDS
class NotificationTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;

  const NotificationTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    // CARDS(TILES) ARE WRITTEN HERE
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xff1D1B42),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                RichText(
                  text: TextSpan(
                    children: buildSubtitleText(subtitle),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Text(
            time,
            style: TextStyle(
              color: Colors.white54,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  List<TextSpan> buildSubtitleText(String subtitle) {
    if (subtitle.contains("\$1234")) {
      List<String> parts = subtitle.split("\$1234");
      return [
        TextSpan(text: parts[0], style: TextStyle(color: Colors.white38)),
        TextSpan(
          text: "\$1234",
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        if (parts.length > 1)
          TextSpan(text: parts[1], style: TextStyle(color: Colors.white38)),
      ];
    } else {
      return [
        TextSpan(text: subtitle, style: TextStyle(color: Colors.white38))
      ];
    }
  }
}
