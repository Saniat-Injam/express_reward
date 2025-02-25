import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

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
      home: SpinWheelScreen(),
    );
  }
}

class SpinWheelScreen extends StatefulWidget {
  const SpinWheelScreen({super.key});

  @override
  SpinWheelScreenState createState() => SpinWheelScreenState();
}

class SpinWheelScreenState extends State<SpinWheelScreen> {
  final List<String> rewards = [
    '\$0.003',
    'Try again',
    '\$0.001',
    '\$0.002',
    'Watch ads',
    '\$0.004'
  ];

  int spinCount = 10;
  final Stream<int> selected = Stream<int>.empty();

  void spinWheel() {
    if (spinCount > 0) {
      setState(() {
        spinCount--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        title: Text('Spin Wheel', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Spin wheel',
            style: TextStyle(
                color: Colors.green, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Add More Rewards To Your Wallet.',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          SizedBox(height: 30),
          FortuneWheel(
            items: rewards
                .map((reward) => FortuneItem(
                    child: Text(reward, style: TextStyle(color: Colors.white))))
                .toList(),
            selected: selected,
          ),
          SizedBox(height: 20),
          Text(
            'Spin Remaining: $spinCount',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              minimumSize: Size(200, 50),
            ),
            onPressed: spinCount > 0 ? spinWheel : null,
            child: Text('Spin',
                style: TextStyle(fontSize: 18, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
