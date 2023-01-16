import 'package:flutter/material.dart';
import 'package:instagram_clone/app/find/presetation/pages/find_page.dart';
import 'package:instagram_clone/app/home/presetation/pages/news_feed_page.dart';
import 'package:instagram_clone/app/home/presetation/widget/app_bottom_nav.dart';
import 'package:instagram_clone/app/profile/presetation/pages/profile_page.dart';
import 'package:instagram_clone/app/reels/presentaion/pages/reels_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageCtrl = PageController(initialPage: 0);

  int currentIndex = 0;

  bool isInteger(num value) => value is int || value == value.roundToDouble();
  @override
  Widget build(BuildContext context) {
    pageCtrl.addListener(() {
      if (isInteger(pageCtrl.page ?? 0)) {
        setState(() {
          currentIndex = pageCtrl.page?.toInt() ?? 0;
        });
      }
    });
    return Scaffold(
      body: PageView(
        controller: pageCtrl,
        children: [
          const NewFeelPage(),
          const FindPage(),
          ReelsPage(),
          const Center(child: Text('Shop')),
          const ProfilePage(),
        ],
      ),
      bottomNavigationBar: AppBottomNav(
        currentIndex: currentIndex,
        onTap: (index) {
          if (index != currentIndex) {
            pageCtrl.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
            );
          }
        },
      ),
    );
  }
}
