import 'package:flutter/material.dart';
import 'package:zephyra_flutter/singleton/carrito_manager.dart';
import 'package:zephyra_flutter/ui/views/product_items/product_item.dart';

class product_view extends StatefulWidget {
  product_view({super.key});
  @override
  State<product_view> createState() => _product_viewState();
}

class _product_viewState extends State<product_view> {
  List lista = carrito_manager().current_list_productos;

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: List.generate(lista.length, (index) {
      return product_item(lista[index][0], lista[index][1], lista[index][2],
          lista[index][3], context);
    }));
  }
}
