// ignore_for_file: prefer_final_fields

import 'package:badges/badges.dart';
import 'package:emart/constants/global_variables.dart';
import 'package:emart/features/cart/screens/cart_screen.dart';
import 'package:emart/features/home/screens/home_screen.dart';
import 'package:emart/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../features/account/screens/account_screen.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    const HomeScreen(),
    const CartScreen(),
    const AccountScreen(),
  ];

  void updatePage(int page) {

    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {

    final userCartLen = context.watch<UserProvider>().user.cart.length;

    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: GlobalVariables.selectedNavBarColor,
        unselectedItemColor: GlobalVariables.unselectedNavBarColor,
        backgroundColor: GlobalVariables.backgroundColor,
        iconSize: 28,
        onTap: updatePage,
        items: [
          //HOME
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 0
                      ?GlobalVariables.selectedNavBarColor
                      :GlobalVariables.backgroundColor,
                      width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(Icons.home_outlined),
            ),
            label: '',
          ),
          //CART
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 1
                      ?GlobalVariables.selectedNavBarColor
                      :GlobalVariables.backgroundColor,
                      width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: Badge(
                badgeStyle: const BadgeStyle(
                  elevation: 0,
                  badgeColor: Colors.white,
                ),
                badgeContent: Text(userCartLen.toString()),
                child: const Icon(Icons.shopping_cart_outlined)
              ),
            ),
            label: '',
          ),
          //ACCOUNT
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 2
                      ?GlobalVariables.selectedNavBarColor
                      :GlobalVariables.backgroundColor,
                      width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(Icons.person_outline_outlined),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}