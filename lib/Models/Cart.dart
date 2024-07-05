// cart.dart
import 'package:flutter/material.dart';
import 'Okita.dart';

class Cart extends ChangeNotifier {
  List<Okita> okitaShop = [
    Okita(
      name: 'Okita Image 1',
      price: '236',
      imageDescription: 'Okita 1 for sale',
      imagePath: 'assets/images/okita1.jpg',
    ),
    Okita(
      name: 'Okita Image 2',
      price: '720',
      imageDescription: 'Okita 2 for sale',
      imagePath: 'assets/images/okita2.png',
    ),
    Okita(
      name: 'Okita Image 3',
      price: '524',
      imageDescription: 'Okita 3 for sale',
      imagePath: 'assets/images/okita3.png',
    ),
    Okita(
      name: 'Okita Image 4',
      price: '111',
      imageDescription: 'Okita 4 for sale',
      imagePath: 'assets/images/okita4.jpg',
    ),
  ];

  List<Okita> userCart = [];

  List<Okita> getOkitaList() {
    return okitaShop;
  }

  List<Okita> getUserCart() {
    return userCart;
  }

  void addItemToCart(Okita okita) {
    userCart.add(okita);
    notifyListeners();
  }

  void removeItemFromCart(Okita okita) {
    userCart.remove(okita);
    notifyListeners();
  }
}
