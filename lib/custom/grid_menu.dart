import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final IconData? icon;
  final Color? color;
  final String? imagePath;

  MenuItem(this.title, {this.icon, this.color, this.imagePath});
}

class GridMenu extends StatelessWidget {
  final List<MenuItem> items;
  const GridMenu({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1.5,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Container(
          decoration: BoxDecoration(
            color: Color(0xff1D1B42),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (item.imagePath != null)
                Image.asset(item.imagePath!) // Asset Icon
              else
                Icon(item.icon, color: item.color, size: 30), // Default Icon

              SizedBox(height: 8),
              Text(
                item.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
                // style: GoogleFonts.poppins(
                //   color: Colors.white,
                //   fontSize: 14,
                // ),
              ),
            ],
          ),
        );
      },
    );
  }
}
