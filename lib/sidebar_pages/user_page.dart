import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("USER"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}
