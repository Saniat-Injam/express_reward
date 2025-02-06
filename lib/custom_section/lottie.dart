import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<String> _lottieFiles = [
    'lottie/bar_v3.json',
    'lottie/bar_v3.json',
    'lottie/bar_v3.json',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Selected Tab: $_selectedIndex',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: List.generate(
            _lottieFiles.length,
            (index) => BottomNavigationBarItem(
              icon: Lottie.asset(
                _lottieFiles[index],
                width: 40,
                height: 40,
                animate:
                    _selectedIndex == index, // Animate only the selected tab
              ),
              label: ['Home', 'Search', 'Profile'][index],
            ),
          ),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
