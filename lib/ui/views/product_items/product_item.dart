import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import "package:zephyra_flutter/singleton/carrito_manager.dart";
import 'package:zephyra_flutter/ui/screens/product_details_screen.dart';

Widget product_item(ref, nombre, precio, img, context) {
  return Container(
    margin: EdgeInsets.all(10),
    height: 120,
    width: double.infinity,
    child: Row(
      children: [
        GestureDetector(
            onTap: () {
              final route = MaterialPageRoute(builder: (BuildContext context) {
                return product_details_screem(
                    imgs: ["imgs", ""],
                    nombre: nombre,
                    precio: precio,
                    caracteristicas: [
                      ["", ""],
                      ["", ""]
                    ]);
              });
              Navigator.of(context).push(route);
            },
            child: Image.network(
              img,
              height: 120,
              width: 120,
            )),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Column(
              children: [Text(nombre), Text("ref.$ref")],
            )),
            Text(precio)
          ],
        )),
        IconButton(
            onPressed: () {
              carrito_manager().agregar_producto([ref, nombre, precio, img]);
            },
            icon: Container(
              child: Icon(
                Icons.add,
                size: 48,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(11)),
                  color: Colors.green),
            ))
      ],
    ),
  );
}
