import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Models/Cart.dart';
import 'package:flutter_application_1/Models/Okita.dart';
import 'package:provider/provider.dart';



class Cartitem extends StatefulWidget {
  Cartitem({super.key, required this.okita});
  Okita okita;


  @override
  State<Cartitem> createState() => _CartitemState();
}

class _CartitemState extends State<Cartitem> {
  
  void removeItemFromCart(){
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.okita);
  }
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          width: 50, // Set the width as needed
          height: 50, // Set the height as needed
          alignment: Alignment.center, // Center the image
          child: Image.asset(
            widget.okita.imagePath,
            fit: BoxFit.cover, // Adjust the fit as needed
          ),
        ),
      title: Text(widget.okita.name),
      subtitle: Text(widget.okita.imageDescription),
      trailing: IconButton(
        onPressed: removeItemFromCart,
        icon: Icon(Icons.delete),
        ),

    );
  }
}
