import 'package:express_reward/custom_section/topbar.dart';
import 'package:express_reward/wallet_section/bkash_withdraw.dart';
import 'package:express_reward/wallet_section/nagad_withdraw.dart';
import 'package:express_reward/wallet_section/wise_withdraw.dart';
import 'package:express_reward/wallet_section/withdraw_history.dart';
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
      home: WalletScreen(),
    );
  }
}

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0D0C22),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(68.0),
          child: const TopBar(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xff1D1B42),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("icons/wallet_icons/wallet.png"),
                    Text(
                      'Minimum Withdraw Limit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '\$1245.90',
                      style: TextStyle(
                        color: Color(0xFF00EA7A),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    WalletOption(
                      image: 'icons/wallet_icons/bkash.png',
                      title: 'Bkash',
                      subtitle: 'Applicable Only For Bangladesh',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BkashWithdrawScreen()),
                        );
                      },
                    ),
                    WalletOption(
                      image: 'icons/wallet_icons/nagad.png',
                      title: 'Nagad',
                      subtitle: 'Applicable Only For Bangladesh',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NagadWithdrawScreen()),
                        );
                      },
                    ),
                    WalletOption(
                      image: 'icons/wallet_icons/wise.png',
                      title: 'Wise',
                      subtitle: 'Applicable For World Wide',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WiseWithdrawScreen()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(8),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WithdrawHistoryScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.history,
                    color: Colors.black,
                    size: 40,
                  ),
                  label: Text(
                    'View Withdraw History',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF00EA7A),
                    foregroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class WalletOption extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final VoidCallback onTap;

  const WalletOption({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Color(0xFF1D1B42),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset(
              image,
              width: 30,
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
        ),
      ),
    );
  }
}
