import 'package:flutter/material.dart';
import 'package:zephyra_flutter/ui/views/product_items/product_item.dart';

class seccion_screen extends StatelessWidget {
  const seccion_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        boton_cerrar(),

      ],
    );
  }
}

Widget boton_cerrar() {
  return Container(
      height: 48,
      width: 48,
      color: Colors.red,
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.block),
      ));
}
Widget lista_items(lista){
  return Container(
    child: ListView(
      children: List.generate(lista.lenght, (index){
        return product_item(ref, nombre, precio, img, context)
      }),
    ),
  );
}