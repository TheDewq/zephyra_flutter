import 'package:flutter/material.dart';
import 'package:zephyra_flutter/ui/screens/product_details_screen.dart';
import 'package:zephyra_flutter/ui/views/carrito_view.dart';
import 'package:zephyra_flutter/ui/views/home_view.dart';
import 'package:zephyra_flutter/ui/views/product_view.dart';

class main_screen extends StatefulWidget {
  const main_screen({super.key});

  @override
  State<main_screen> createState() => _main_screenState();
}

class _main_screenState extends State<main_screen> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    final screens = [product_details_screem(), product_view(), carrito_view()];
    return Scaffold(
      body: IndexedStack(index: selectedIndex, children: screens),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "productos"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "carrito")
        ],
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex,
      ),
    );
  }
}
