import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Models/Okita.dart';

class GalleryTile extends StatelessWidget {
  Okita okita;
  GalleryTile({super.key, required this.okita, required this.onTap});
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, bottom: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //shoe pics
          Container(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    okita.imagePath,
                    height: 400,
                  ),
                ),
                Text(okita.imageDescription),
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 149, 198, 221),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: onTap,
                  child: Center(
                      child: Icon(
                    Icons.add,
                    size: 48,
                  )),
                ),
              ],
            ),
          )

          //description

          //price + details

          //button to add to cart
        ],
      ),
    );
  }
}
