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
      home: PromoteWebsiteScreen(),
    );
  }
}

class PromoteWebsiteScreen extends StatelessWidget {
  final List<Map<String, dynamic>> visitorPackages = [
    {'visitors': '5000', 'price': '\$5.00', 'popular': false},
    {'visitors': '15000', 'price': '\$12.00', 'popular': false},
    {'visitors': '25000', 'price': '\$20.00', 'popular': true},
    {'visitors': '80000', 'price': '\$50.00', 'popular': false},
    {'visitors': '120000', 'price': '\$120.00', 'popular': false},
  ];

  PromoteWebsiteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A2E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A1A2E),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        title: Text('Promote Website', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: visitorPackages.length,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, index) {
          final package = visitorPackages[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color(0xFF2E2E4D),
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
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.language, color: Colors.white),
                    ),
                    const SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${package['visitors']} Visitors',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
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
                        color: Colors.greenAccent,
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
