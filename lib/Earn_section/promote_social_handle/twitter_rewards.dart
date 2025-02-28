import 'package:flutter/material.dart';

class TwitterRewardsScreen extends StatelessWidget {
  final List<Map<String, String>> profiles = [
    {'name': 'Laura Frea', 'reward': '\$0.4'},
    {'name': 'Dindola Harp', 'reward': '\$0.4'},
    {'name': 'Samanta Sana', 'reward': '\$0.4'},
    {'name': 'Jon Doe', 'reward': '\$0.4'},
    {'name': 'Luis Fonsi', 'reward': '\$0.4'},
  ];

  TwitterRewardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D0C22),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1B42),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Twitter",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF1D1B42),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Image.asset(
                    "icons/earn_icons/promote_social_handle_icons/light_bulb.png",
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Follow Twitter Profiles And Earn Rewards.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: profiles.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Color(0xFF1D1B42),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: Image.asset(
                          "icons/earn_icons/promote_social_handle_icons/twitter.png"),
                      title: Text(
                        profiles[index]['name']!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        profiles[index]['reward']!,
                        style: TextStyle(
                          color: Color(0xFF00EA7A),
                          fontSize: 16,
                        ),
                      ),
                      trailing: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "Follow",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
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
