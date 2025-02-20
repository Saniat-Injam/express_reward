import 'package:express_reward/drawer_pages/logout_screen.dart';
import 'package:express_reward/drawer_pages/user_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Drawer Header
buildHeader(BuildContext context) {
  // Material widget instead of container for including InkWell
  return Material(
    color: Color(0xff0D0C22),
    // Inkwell widget to include some interaction to the header
    child: InkWell(
      onTap: () {
        // Close navigation drawer before
        Navigator.pop(context);

        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => UserPage(),
        ));
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top,
          bottom: 24,
        ),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 48,
                      backgroundImage: AssetImage("images/avatar_image.png"),
                    ),
                  ],
                ),
                SizedBox(width: 14),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tahmid Abdullah",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Updrade",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}

// Column Items
buildMenuItems(BuildContext context) {
  return Container(
    color: Color(0xff0D0C22),
    padding: EdgeInsets.all(24),
    // Wrap widget instead of column widget for vertical spacing
    child: Wrap(
      runSpacing: 16,
      children: [
        ListTile(
          leading: Image.asset("icons/sidebar_icons/membership.png"),
          title: Text(
            "Membership",
            style: TextStyle(color: Color(0xffFFFFFF)),
          ),
          onTap: () {
            // Close the navigation drawer before
            Navigator.pop(context);
            // Navigator.of(context).push(MaterialPageRoute(
            //   //builder: (context) => MembershipPage(),
            // ));
          },
        ),
        ListTile(
          leading: Image.asset("icons/sidebar_icons/leaderboard.png"),
          title: Text(
            "Leaderboard",
            style: TextStyle(color: Color(0xffFFFFFF)),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset("icons/sidebar_icons/promotion.png"),
          title: Text(
            "Promotion",
            style: TextStyle(color: Color(0xffFFFFFF)),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset("icons/sidebar_icons/refer_app.png"),
          title: Text(
            "Refer App",
            style: TextStyle(color: Color(0xffFFFFFF)),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset("icons/sidebar_icons/settings.png"),
          title: Text(
            "Settings",
            style: TextStyle(color: Color(0xffFFFFFF)),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset("icons/sidebar_icons/faqs.png"),
          title: Text(
            "FAQs",
            style: TextStyle(color: Color(0xffFFFFFF)),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset("icons/sidebar_icons/share_app.png"),
          title: Text(
            "Share App",
            style: TextStyle(color: Color(0xffFFFFFF)),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset("icons/sidebar_icons/rate_us.png"),
          title: Text(
            "Rate Us",
            style: TextStyle(color: Color(0xffFFFFFF)),
          ),
          onTap: () {},
        ),
        Divider(
          color: Colors.grey[700],
        ),
        ListTile(
          leading: Image.asset("icons/sidebar_icons/privacy_policy.png"),
          title: Text(
            "Privacy Policy",
            style: TextStyle(color: Color(0xffFFFFFF)),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset("icons/sidebar_icons/terms_and_conditions.png"),
          title: Text(
            "Terms & Conditions",
            style: TextStyle(color: Color(0xffFFFFFF)),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset("icons/sidebar_icons/delete_account.png"),
          title: Text(
            "Delete Account",
            style: TextStyle(color: Color(0xffFFFFFF)),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset("icons/sidebar_icons/about.png"),
          title: Text(
            "About",
            style: TextStyle(color: Color(0xffFFFFFF)),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset("icons/sidebar_icons/logout.png"),
          title: Text(
            "logout",
            style: TextStyle(color: Color(0xffFFFFFF)),
          ),
          onTap: () async {
            // Navigate directly to onboarding page
            final prefs = await SharedPreferences.getInstance();
            prefs.setBool("showHome", false);

            // Navigator.of(context).pushReplacement(
            //   MaterialPageRoute(
            //     builder: (context) => OnboardingScreen(),
            //   ),
            // );
            showLogoutDialog(context);
          },
        ),
      ],
    ),
  );
}
