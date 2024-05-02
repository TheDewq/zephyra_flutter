import 'package:flutter/material.dart';
import 'package:zephyra_flutter/singleton/carrito_manager.dart';
import 'package:zephyra_flutter/ui/views/carrito_items/carrito_item.dart';
import 'package:zephyra_flutter/ui/views/product_items/product_item.dart';

class carrito_view extends StatefulWidget {
  carrito_view({super.key});

  @override
  State<carrito_view> createState() => _carrito_viewState();
}

class _carrito_viewState extends State<carrito_view> {
  refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return listGenerator(refresh);
  }
}

Widget listGenerator(refresh) {
  var lista = carrito_manager().current_list;
  if (lista.isNotEmpty) {
    return ListView(
      children: List.generate(lista.length, (index) {
        return carrito_item(
          img: lista[index][3],
          nombre: lista[index][1],
          precio: lista[index][2],
          ref: lista[index][0],
          notifyParent: refresh,
        );
      }),
    );
  } else {
    return Center(
      child: Text("no hay items aqui ¡empieza a buscar!"),
    );
  }
}
