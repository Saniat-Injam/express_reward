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
      home: CustomAppbar(),
    );
  }
}

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color(0xff1D1B42),
        height: 68,
        width: 430,
        padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
        child: Row(
          children: [
            Row(
              children: [
                SizedBox(
                  child: Image.asset("icons/appbar_icons/drawer.png"),
                ),
                SizedBox(width: 8),
                SizedBox(
                  child: Image.asset("icons/appbar_icons/dollar.png"),
                ),
                Text(
                  "Express Reward",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(width: 48),
            Row(
              children: [
                Container(
                  color: Color(0xff0E1334),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset("icons/appbar_icons/wallet.png"),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "\$1245.90",
                        style: TextStyle(
                            color: Color(0xff00EA7A),
                            fontSize: 16,
                            //height: 24,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16),
                Row(
                  children: [
                    SizedBox(
                      height: 28,
                      width: 28,
                      child: Image.asset("icons/appbar_icons/bell.png"),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
