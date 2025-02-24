import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:express_reward/earn.dart';
import 'package:express_reward/home.dart';
import 'package:express_reward/prmomote.dart';
import 'package:express_reward/wallet.dart';
import 'package:express_reward/profile.dart';

import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  Color bgColor = Color(0xff04031A);
  int index = 0;
  final List<String> labels = ["Home", "Earn", "Promote", "Wallet", "Profile"];

  final screens = [
    HomeScreen(),
    EarnScreen(),
    PromoteScreen(),
    WalletScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: screens[index],
      bottomNavigationBar: Stack(
        key: navigationKey,
        alignment: Alignment.bottomCenter,
        children: [
          CurvedNavigationBar(
            index: index,
            items: [
              Image.asset("icons/navbar_icons/home.png", width: 40, height: 40),
              Image.asset("icons/navbar_icons/earn.png", width: 40, height: 40),
              Image.asset("icons/navbar_icons/promote.png",
                  width: 40, height: 40),
              Image.asset("icons/navbar_icons/wallet.png",
                  width: 40, height: 40),
              Image.asset("icons/navbar_icons/profile.png",
                  width: 40, height: 40),
            ],
            backgroundColor: Colors.transparent,
            color: Color(0xff1D1B42),
            buttonBackgroundColor: Color(0xFF00EA7A),
            animationDuration: Duration(milliseconds: 150),
            onTap: (index) {
              setState(() {
                this.index = index;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                labels.length,
                (index) => Text(
                  labels[index],
                  style: TextStyle(
                    color: index == index ? Color(0xFF00EA7A) : Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
