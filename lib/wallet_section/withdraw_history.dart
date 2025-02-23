import 'package:flutter/material.dart';

class WithdrawHistoryScreen extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      icon: "icons/wallet_icons/bkash.png",
      title: "Payment Successful",
      amount: "-\$1245.90",
      isSuccessful: true,
      time: "03:46pm",
      date: "23 Feb 2024",
    ),
    Transaction(
      icon: "icons/wallet_icons/bkash.png",
      title: "Withdraw Request Sent",
      amount: "-\$1245.90",
      isSuccessful: false,
      time: "03:46pm",
      date: "23 Feb 2024",
    ),
    Transaction(
      icon: "icons/wallet_icons/nagad.png",
      title: "Payment Successful",
      amount: "-\$3445.90",
      isSuccessful: true,
      time: "03:46pm",
      date: "23 Feb 2024",
    ),
    Transaction(
      icon: "icons/wallet_icons/nagad.png",
      title: "Withdraw Request Sent",
      amount: "-\$3445.90",
      isSuccessful: false,
      time: "03:46pm",
      date: "23 Feb 2024",
    ),
    Transaction(
      icon: "icons/wallet_icons/wise.png",
      title: "Payment Successful",
      amount: "-\$1245.90",
      isSuccessful: true,
      time: "03:46pm",
      date: "23 Feb 2024",
    ),
    Transaction(
      icon: "icons/wallet_icons/wise.png",
      title: "Withdraw Request Sent",
      amount: "-\$1245.90",
      isSuccessful: false,
      time: "03:46pm",
      date: "23 Feb 2024",
    ),
  ];

  WithdrawHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF16122C),
      appBar: AppBar(
        backgroundColor: Color(0xFF16122C),
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
          "Withdraw History",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            color: Color(0xFF1E1B39),
            child: Center(
              child: Text(
                "This Withdraw History Is About Last One Year.",
                style: TextStyle(color: Colors.white60),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return TransactionTile(transaction: transactions[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TransactionTile extends StatelessWidget {
  final Transaction transaction;

  const TransactionTile({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFF1E1B39),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: Colors.white,
            child: Image.asset(
              transaction.icon,
              width: 30,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "${transaction.time} | ${transaction.date}",
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Text(
            transaction.amount,
            style: TextStyle(
              color: transaction.isSuccessful
                  ? Color(0xFF00EA7A)
                  : Color(0xFFFF3B30),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class Transaction {
  final String icon;
  final String title;
  final String amount;
  final bool isSuccessful;
  final String time;
  final String date;

  Transaction({
    required this.icon,
    required this.title,
    required this.amount,
    required this.isSuccessful,
    required this.time,
    required this.date,
  });
}
