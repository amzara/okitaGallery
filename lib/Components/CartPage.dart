import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/cartItem.dart';
import 'package:flutter_application_1/Models/Cart.dart';
import 'package:flutter_application_1/Models/Okita.dart';
import 'package:provider/provider.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => 
      
         Container(
          
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'My Cart',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index) {
                   Okita individualOkita = value.getUserCart()[index];
          
                  return Cartitem(okita: individualOkita);
                }),
              )
            ],
          ),
        ),
      
    );
  }
}
