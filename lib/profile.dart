import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D0C22),
      appBar: AppBar(
        backgroundColor: Color(0xff1D1B42),
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Image.asset("icons/appbar_icons/drawer.png"),
          );
        }),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Icon(Icons.monetization_on, color: Colors.green),
            Image.asset("icons/appbar_icons/dollar.png"),

            Text(
              "Express Reward",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Color(0xff04031A),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("icons/appbar_icons/wallet.png"),
                SizedBox(width: 6),
                Text(
                  "\$1245.90",
                  style: TextStyle(
                    color: Color(0xff00EA7A),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8),
          //Icon(Icons.notifications, color: Colors.white),
          Image.asset("icons/appbar_icons/bell.png"),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: const Color(0xFF1D1B42),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage('icons/profile_icons/tahmid.png'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 10,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            //color: Colors.green,
                            //shape: BoxShape.circle,
                            ),
                        // child: const Icon(
                        //   Icons.edit,
                        //   color: Colors.white,
                        //   size: 18,
                        // ),
                        child: Image.asset("icons/profile_icons/upload.png"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  'Tahmid Abdullah',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFF41072),
                          Color(0xFF9702F5),
                        ], // Green gradient
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Screen(),
                        //   ),
                        // );
                      },
                      icon: Image.asset("icons/profile_icons/upgrade.png"),
                      label: Text(
                        "Upgrade",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                buildInfoTile(
                  imgPath: "icons/profile_icons/email.png",
                  label: 'Email',
                  value: 'Tahmid123@gmail.com',
                ),
                buildInfoTile(
                  imgPath: "icons/profile_icons/mobile.png",
                  label: 'Mobile',
                  value: '+880 1712 345 678',
                ),
                buildInfoTile(
                  imgPath: "icons/profile_icons/dob.png",
                  label: 'Date Of Birth (Date/Month/Year)',
                  value: '12/5/2000',
                ),
                buildInfoTile(
                  imgPath: "icons/profile_icons/gender.png",
                  label: 'Gender',
                  value: 'Male',
                ),
                buildInfoTile(
                  imgPath: "icons/profile_icons/address.png",
                  label: 'Address',
                  value: 'Gulshan-01, Dhaka',
                ),
                buildInfoTile(
                  imgPath: "icons/profile_icons/country.png",
                  label: 'Country',
                  value: 'Bangladesh',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildInfoTile({
    required String imgPath,
    required String label,
    required String value,
  }) {
    return Container(
      //margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF1D1B42),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Image.asset(imgPath),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                Text(
                  value,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Edit',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
