import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/CartPage.dart';
import 'package:flutter_application_1/Components/GalleryPage.dart';
import 'package:flutter_application_1/Components/bottomNavBar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const Gallerypage(),
    const Cartpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Bottomnavbar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            padding: EdgeInsets.only(left: 5),
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(
                    child: Image.asset('images/okita1.jpg'),
                  ),
                  const Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Divider(
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(Icons.home, color: Colors.white),
                      title:
                          Text("Home", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(Icons.home, color: Colors.white),
                      title:
                          Text("Home", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 25),
                child: ListTile(
                  leading: Icon(Icons.home, color: Colors.white),
                  title: Text("Home", style: TextStyle(color: Colors.white)),
                ),
              ),
            ]),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
