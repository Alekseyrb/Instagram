// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/account_page.dart';
import 'package:instagram_ui/pages/like_page.dart';
import 'package:instagram_ui/pages/reels_page.dart';
import 'package:instagram_ui/pages/search_page.dart';
import 'package:instagram_ui/pages/user_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedIndex = 0;
  void navigateBottomNavBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> children = [
    UserPage(),
    UserSearch(),
    UserReels(),
    UserLike(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: children[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: 'reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            activeIcon: Icon(Icons.favorite),
            label: 'like',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'account',
          ),
        ],
      ),
    );
  }
}
