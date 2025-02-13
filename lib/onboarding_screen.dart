import 'package:express_reward/home.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lottie/lottie.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool("showHome") ?? false;

  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(showHome: showHome),
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool showHome;
  const MyApp({super.key, required this.showHome});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: showHome ? HomeScreen() : OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  Widget buildpage({
    required Color color,
    required String urlImage,
    required String title,
    required String subtitle,
  }) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            urlImage,
            repeat: false,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          SizedBox(height: 80),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 24),
          Container(
            padding: EdgeInsets.symmetric(),
            child: Text(
              subtitle,
              style: TextStyle(color: Colors.amber),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 2;
            });
          },
          children: [
            buildpage(
              color: Color(0xff0D0c22),
              urlImage: "animations/obs1.json",
              title:
                  "Wecome to the World of Express Rewards Start earning real rewards effortlessly!",
              subtitle: "page1",
            ),
            buildpage(
              color: Color(0xff0D0c22),
              urlImage: "animations/obs2.json",
              title: "page2",
              subtitle: "page2",
            ),
            buildpage(
              color: Color(0xff0D0c22),
              urlImage: "animations/obs3.json",
              title: "page3",
              subtitle: "page3",
            )
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                //primary: Colors.white,
                backgroundColor: Colors.teal.shade700,
                minimumSize: Size.fromHeight(800),
              ),
              child: Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              onPressed: () async {
                // Navigate directly to the home page
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool("showHome", true);

                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            )
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Text("Skip"),
                    onPressed: () {
                      controller.jumpToPage(2);
                    },
                  ),
                  Center(
                    child: SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                        effect: WormEffect(
                          spacing: 16,
                          dotColor: Colors.black26,
                          activeDotColor: Colors.teal.shade700,
                        ),
                        onDotClicked: (index) {
                          controller.animateToPage(
                            index,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        }),
                  ),
                  TextButton(
                    child: Text("Next"),
                    onPressed: () {
                      controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                  )
                ],
              ),
            ),
    );
  }
}
