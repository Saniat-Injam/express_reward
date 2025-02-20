import 'package:flutter/material.dart';

class TwitterScreen extends StatelessWidget {
  const TwitterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0C22),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1B42),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Twitter",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          buildCard('5000 Followers', '\$5.00', 'Save 0%'),
          buildCard('15000 Followers', '\$12.00', 'Save 0%'),
          buildCard('25000 Followers', '\$20.00', 'Save 0%', isPopular: true),
          buildCard('80000 Followers', '\$50.00', 'Save 0%'),
          buildCard('120000 Followers', '\$120.00', 'Save 0%'),
        ],
      ),
    );
  }

  Widget buildCard(String title, String price, String discount,
      {bool isPopular = false}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF1D1B42),
        borderRadius: BorderRadius.circular(16.0),
        border: isPopular
            ? Border.all(color: Colors.blue, width: 2)
            : Border.all(color: Colors.transparent),
      ),
      child: Row(
        children: [
          // CircleAvatar(
          //   backgroundColor: Colors.green,
          //   child: const Icon(
          //     Icons.facebook,
          //     color: Colors.white,
          //   ),
          // ),
          Image.asset("icons/promote_icons/twitter.png"),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 4.0),
                const Text(
                  'Will Follow You',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                price,
                style: const TextStyle(
                  color: Color(0xFF00EA7A),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                discount,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
