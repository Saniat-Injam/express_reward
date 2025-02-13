import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:express_reward/bottom_navbar_section/earn.dart';
import 'package:express_reward/home.dart';
import 'package:express_reward/bottom_navbar_section/prmomote.dart';
import 'package:express_reward/bottom_navbar_section/profile.dart';
import 'package:express_reward/bottom_navbar_section/walltet.dart';
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
  final List<String> labels = ["Home", "Earning", "Mission", "Rank", "Wallet"];

  final screens = [
    HomeScreen(),
    EarnScreen(),
    PromoteScreen(),
    ProfilePage(),
    WalletScreen(),
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
            buttonBackgroundColor: Colors.green,
            animationDuration: Duration(milliseconds: 200),
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
                    color: index == index ? Colors.green : Colors.white,
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
