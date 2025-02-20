import 'package:flutter/material.dart';

class PromoteVideosScreen extends StatelessWidget {
  final List<Map<String, dynamic>> viewsPackages = [
    {'views': '5000', 'price': '\$5.00', 'popular': false},
    {'views': '15000', 'price': '\$12.00', 'popular': false},
    {'views': '25000', 'price': '\$20.00', 'popular': true},
    {'views': '80000', 'price': '\$50.00', 'popular': false},
    {'views': '120000', 'price': '\$120.00', 'popular': false},
  ];

  PromoteVideosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0C22),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1D1B42),
        elevation: 0,
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
          'Promote Video',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        centerTitle: false,
      ),
      body: ListView.builder(
        itemCount: viewsPackages.length,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, index) {
          final package = viewsPackages[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color(0xFF1D1B42),
              borderRadius: BorderRadius.circular(12.0),
              border: package['popular']
                  ? Border.all(color: Colors.orange, width: 2)
                  : null,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Container(
                    //   padding: const EdgeInsets.all(8.0),
                    //   decoration: BoxDecoration(
                    //     color: Colors.orange,
                    //     shape: BoxShape.circle,
                    //   ),
                    //   child: Icon(Icons.language, color: Colors.white),
                    // ),
                    Image.asset("icons/promote_icons/promote_videos.png"),
                    const SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${package['views']} views',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          'Will Visit For 30 Seconds',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      package['price'],
                      style: TextStyle(
                        color: Color(0xFF00EA7A),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Save 0%',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
