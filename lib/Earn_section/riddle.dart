import 'package:flutter/material.dart';

class RiddleScreen extends StatelessWidget {
  const RiddleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D0C22),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1B42),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Riddle',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _iconText(
                  "icons/earn_icons/riddle_icons/timer.png",
                  '30 Sec',
                ),
                _iconText(
                  "icons/earn_icons/riddle_icons/wallet.png",
                  '\$0.78',
                ),
                _iconText(
                  "icons/earn_icons/riddle_icons/question_mark.png",
                  'Q. No. 5 Of 10',
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF1D1B42),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'বাংলাদেশের জাতীয় পাখির নাম কি?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            _answerButton('A.) দোয়েল', Color(0xFF01D148), Colors.white),
            _answerButton('B.) টিয়া', Color(0xFF1D1B42), Colors.white),
            _answerButton('C.) ময়না', Color(0xFFB50E0E), Colors.white),
            _answerButton('D.) শালিক', Color(0xFF1D1B42), Colors.white),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _actionButton('Skip', Color(0xFF1D1B42)),
                _actionButton('Next', Color(0xFF1D1B42)),
              ],
            ),
            SizedBox(height: 20),
            _actionButton('Stop Playing', Color(0xFF00EA7A), isLarge: true),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _iconText(String imgpath, String text) {
    return Row(
      children: [
        Image.asset(imgpath),
        SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
            color: Color(0xFF737686),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _answerButton(String text, Color bgColor, Color textColor) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          padding: EdgeInsets.symmetric(vertical: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: () {},
        child: Text(text, style: TextStyle(color: textColor, fontSize: 16)),
      ),
    );
  }

  Widget _actionButton(
    String text,
    Color bgColor, {
    bool isLarge = false,
  }) {
    return SizedBox(
      width: isLarge ? double.infinity : 150,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          padding: EdgeInsets.symmetric(vertical: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            //color: Color(0xFF0D0C22),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
