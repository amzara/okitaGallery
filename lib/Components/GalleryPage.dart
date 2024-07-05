import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/CartPage.dart';
import 'package:flutter_application_1/Components/GalleryTile.dart';
import 'package:flutter_application_1/Components/bottomNavBar.dart';
import 'package:flutter_application_1/Models/Cart.dart';
import 'package:flutter_application_1/Models/Okita.dart';
import 'package:provider/provider.dart';

class Gallerypage extends StatefulWidget {
  const Gallerypage({super.key});

  @override
  State<Gallerypage> createState() => _GallerypageState();
}

class _GallerypageState extends State<Gallerypage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void addOkitaToCart(Okita okita) {
    Provider.of<Cart>(context, listen: false).addItemToCart(okita);

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Succesfully Added!'),
              content: Text('Check your cart'),
            ));
  }

  final List<Widget> _pages = [
    const Gallerypage(),
    const Cartpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Cart>(
        builder: (context, value, child) => Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search"),
                  Icon(Icons.search),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "Everything flies faster than others",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Hot Picks🔥",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.getOkitaList().length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Okita okita = value.getOkitaList()[index];
                  return GalleryTile(
                    okita: okita,
                    onTap: () => addOkitaToCart(okita),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
