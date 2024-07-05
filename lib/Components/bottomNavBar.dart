import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Bottomnavbar extends StatelessWidget {
  void Function(int)? onTabChange;
  Bottomnavbar({super.key, required this.onTabChange});
  
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        
        child: GNav(
          mainAxisAlignment: MainAxisAlignment.center,
          color: Colors.black,
          activeColor: Colors.grey.shade700,
          tabActiveBorder: Border.all(color: Colors.pink),
          tabBackgroundColor: Colors.white,
          tabBorderRadius: 16,
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
            ),
          ],
        ));
  }
}
