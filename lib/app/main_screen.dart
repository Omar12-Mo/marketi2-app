import 'package:flutter/material.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';
import 'package:testapp/features/cart&checkout/presentation/screens/cart_screen.dart';
import 'package:testapp/features/home/presentation/screens/home_screen.dart';
import 'package:testapp/features/product%20details/presentation/screens/favorites_screen.dart';
import 'package:testapp/features/profile&settings/presentation/screens/menu_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavoritesScreen(),
    MenuScreen(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: pages[currentIndex],
    bottomNavigationBar: Container(
       decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14),
              topRight: Radius.circular(14),
            ),
            border: Border(
              top: BorderSide(color: AppColors.lightBlue900, width: 1),
              right: BorderSide(color: AppColors.lightBlue900, width: 1),
              left: BorderSide(color: AppColors.lightBlue900, width: 1),
            ),
          ),
      child: BottomNavigationBar(
        mouseCursor: SystemMouseCursors.none,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
      
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            activeIcon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.lightBlue100,
        unselectedItemColor: AppColors.grayScale2,
        selectedLabelStyle: medium(color: AppColors.lightBlue100, fontsize: 12),
        unselectedLabelStyle: medium(color: AppColors.grayScale2, fontsize: 12),
        iconSize: 27,
        backgroundColor: AppColors.primaryColor,
      ),
    ),
    );
  }
}
