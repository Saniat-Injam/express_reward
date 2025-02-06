import 'package:express_reward/custom_section/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PromoteScreen extends StatelessWidget {
  const PromoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff04031A),
      appBar: AppBar(
        backgroundColor: Color(0xff1D1B42),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Row(
          children: [
            Icon(Icons.monetization_on, color: Colors.green),
            SizedBox(width: 4),
            Text(
              "Express Reward",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
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
            child: Text("\$1245.90",
                style: GoogleFonts.poppins(color: Colors.lightGreenAccent)),
          ),
          SizedBox(width: 10),
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF292B4E),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const Icon(Icons.lightbulb, color: Colors.green, size: 32),
                  const SizedBox(height: 8),
                  Text(
                    'Dear Tahmid, You Can Use Our App To Drive More Traffic To Your Website Or Increase Views On Your Videos. It\'s An Excellent Method For Attracting More Visitors And Viewers. If You\'re Interested, Give It A Try!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildPromoteTile(
                  context,
                  icon: Icons.language,
                  title: 'Promote Website',
                  subtitle: 'In Order To Promote, You Have To Pay',
                ),
                _buildPromoteTile(
                  context,
                  icon: Icons.play_circle_fill,
                  title: 'Promote Videos',
                  subtitle: 'In Order To Promote, You Have To Pay',
                ),
                _buildPromoteTile(
                  context,
                  icon: Icons.group,
                  title: 'Promote Social Handle',
                  subtitle: 'In Order To Promote, You Have To Pay',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  Widget _buildPromoteTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF292B4E),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.red, size: 32),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
