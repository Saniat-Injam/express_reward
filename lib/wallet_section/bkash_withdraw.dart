import 'package:flutter/material.dart';

class BkashWithdrawScreen extends StatelessWidget {
  const BkashWithdrawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D0C22),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1B42),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "bkash Withdraw",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Color(0xFF1D1B42),
              child: Column(
                children: [
                  _buildInputField(
                    Icons.lock,
                    "Name",
                    "Tahmid Abdullah",
                  ),
                  SizedBox(height: 20),
                  _buildInputField(
                    Icons.email,
                    "Email",
                    "Tahmid123@Gmail.Com",
                  ),
                  SizedBox(height: 20),
                  _buildInputField(
                    Icons.phone,
                    "BKash Account Number",
                    "01712-345 678",
                  ),
                  SizedBox(height: 20),
                  _buildInputField(
                    Icons.attach_money,
                    "Withdraw Value",
                    "\$2345.00",
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            _buildWithdrawButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF1D1B42),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Withdraw Securely Through ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Image.asset("icons/wallet_icons/bkash_logo.png"),
        ],
      ),
    );
  }

  Widget _buildInputField(IconData icon, String label, String value,
      {bool enabled = true}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: Colors.white70,
              size: 18,
            ),
            SizedBox(width: 5),
            Text(
              label,
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        TextField(
          enabled: enabled,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.grey.withOpacity(0.2),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.green,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 14,
            ),
          ),
          controller: TextEditingController(text: value),
        ),
      ],
    );
  }

  Widget _buildWithdrawButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF00EA7A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {},
        child: Text(
          "Withdraw Request",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0D0C22),
          ),
        ),
      ),
    );
  }
}
