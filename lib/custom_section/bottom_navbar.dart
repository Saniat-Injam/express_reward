// import 'package:flutter/material.dart';

// class BottomNavBar extends StatelessWidget {
//   const BottomNavBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       backgroundColor: Color(0xff1D1B42),
//       type: BottomNavigationBarType.fixed,
//       selectedItemColor: Colors.green,
//       unselectedItemColor: Colors.grey,
//       items: [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: "Home",
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.monetization_on),
//           label: "Earn",
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.campaign),
//           label: "Promote",
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.account_balance_wallet),
//           label: "Wallet",
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.person),
//           label: "Profile",
//         ),
//       ],
//     );
//   }
// }

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> navigationItem = [
    const Icon(Icons.home),
    const Icon(Icons.monetization_on),
    const Icon(Icons.campaign),
    const Icon(Icons.account_balance_wallet),
    const Icon(Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: navigationItem,
      ),
    );
  }
}
