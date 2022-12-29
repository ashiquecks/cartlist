import 'package:cartlist/RESOURCE/assetFile.dart';
import 'package:cartlist/SCREENS/CART/cartScreen.dart';
import 'package:cartlist/SCREENS/CATEGORY/category.dart';
import 'package:cartlist/SCREENS/FAVORITE/favoriteScreen.dart';
import 'package:cartlist/SCREENS/HOME/homeScreen.dart';
import 'package:cartlist/SCREENS/PROFILE/profileScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({super.key});

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    FavoriteScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final widgetSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 0,
        leading: const SizedBox(),
        elevation: 0,
        title: SizedBox(
          width: widgetSize.width / 4,
          child: Image.asset(
            appLogo,
            fit: BoxFit.cover,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: GNav(
          haptic: true,
          tabBorderRadius: 15,
          curve: Curves.easeOutExpo,
          duration: const Duration(milliseconds: 900),
          selectedIndex: _selectedIndex,
          onTabChange: _onItemTapped,
          color: Colors.grey[800],
          activeColor: Colors.lightGreen,
          iconSize: 24,
          tabBackgroundColor: Colors.lightGreen.withOpacity(0.1),
          tabMargin: const EdgeInsets.all(10), // selected tab background color
          padding: const EdgeInsets.symmetric(
              horizontal: 10, vertical: 5), // navigation bar padding
          tabs: const [
            GButton(
              icon: LineIcons.home,
              text: 'Home',
            ),
            GButton(
              icon: LineIcons.square,
              text: 'Category',
            ),
            GButton(
              icon: LineIcons.shoppingCart,
              text: 'Cart',
            ),
            GButton(
              icon: LineIcons.heart,
              text: 'Favorite',
            )
          ]),
    );
  }
}
