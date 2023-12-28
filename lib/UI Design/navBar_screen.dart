import 'package:flutter/material.dart';
import 'package:freshfood/UI%20Design/fresh_product_page.dart';
import 'package:freshfood/UI%20Design/regular_product_page.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

import 'home_screen.dart';

class NavbarScreen extends StatelessWidget {
  NavbarScreen({super.key});
  final _pageControlller = PageController();

  @override
  void dispose() {
    _pageControlller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          controller: _pageControlller,
          children: const <Widget>[
            HomePage(),
            FreshProductPage(),
            RegularProductPage(),
          ],
        ),
        extendBody: true,
        bottomNavigationBar: RollingBottomBar(
          color: const Color.fromARGB(255, 255, 240, 219),
          controller: _pageControlller,
          flat: true,
          useActiveColorByDefault: false,
          items: const [
            RollingBottomBarItem(Icons.home,
                label: 'Home', activeColor: Colors.redAccent),
            RollingBottomBarItem(Icons.emoji_nature_sharp,
                label: 'Fresh', activeColor: Colors.blueAccent),
            RollingBottomBarItem(Icons.shopping_bag_outlined,
                label: 'Regular', activeColor: Colors.green),
          ],
          enableIconRotation: true,
          onTap: (index) {
            _pageControlller.animateToPage(
              index,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOut,
            );
          },
        ),
      ),
    );
  }
}
