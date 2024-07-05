// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/GalleryPage.dart';
import 'package:flutter_application_1/Models/Cart.dart';
import 'package:flutter_application_1/Pages/Homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Cart>(
      create: (context) => Cart(),
      child: const MaterialApp(
        home: Homepage(),
      ),
    );
  }
}
