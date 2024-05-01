import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import "package:zephyra_flutter/singleton/carrito_manager.dart";

class carrito_item extends StatefulWidget {
  const carrito_item(
      {Key? key,
      required this.img,
      required this.nombre,
      required this.precio,
      required this.ref})
      : super(key: key);

  final String nombre;
  final String precio;
  final String img;
  final String ref;

  @override
  State<carrito_item> createState() => _carrito_itemState();
}

class _carrito_itemState extends State<carrito_item> {
  int cantidad = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 140,
      width: double.infinity,
      child: Row(
        children: [
          Image.network(
            widget.img,
            height: 120,
            width: 120,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text(widget.nombre)),
              Text(widget.precio)
            ],
          )),
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (cantidad < 6) {
                        cantidad += 1;
                      }
                    });
                  },
                  icon: Container(
                      child: Icon(
                        Icons.arrow_upward,
                        size: 32,
                        color: Colors.black,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(11)),
                      ))),
              Container(
                height: 43,
                width: 43,
                child: Center(child: Text(cantidad.toString())),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (cantidad > 0) {
                        cantidad -= 1;
                      }
                      if (cantidad <= 0) {
                        carrito_manager().eliminar_item(widget.ref);
                      }
                    });
                  },
                  icon: Container(
                    child: Icon(
                      Icons.arrow_downward,
                      size: 32,
                      color: Colors.black,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(11))),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
