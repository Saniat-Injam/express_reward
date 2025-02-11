import 'package:flutter/material.dart';

class MembershipPage extends StatelessWidget {
  const MembershipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(
        children: [],
      ),
      appBar: AppBar(
        title: Text("Membership"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}
