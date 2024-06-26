import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:zephyra_flutter/singleton/carrito_manager.dart';
import 'package:zephyra_flutter/ui/views/product_view.dart';

class ProductoView extends StatelessWidget {
  final String imgs;
  final int ref;
  final String nombre;
  final String precio;
  final List<List> caracteristicas;
  const ProductoView(
      {super.key,
      required this.ref,
      required this.imgs,
      required this.nombre,
      required this.precio,
      required this.caracteristicas});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child:
                  Container(height: 150, child: ImageCarouselWidget(img: imgs)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              ref.toString(),
              style: TextStyle(
                fontFamily: "Alata",
                fontSize: 14.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  "\$ ",
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                Text(
                  precio,
                  style: TextStyle(
                    fontFamily: "Alata",
                    fontSize: 34.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: RecyclerViewWidget(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 48.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.block,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(width: 3.0),
                Container(
                  width: 129.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      onPressed: () {
                        carrito_manager()
                            .agregar_producto([ref, nombre, precio, imgs]);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Agregar",
                            style: TextStyle(
                              fontFamily: "Alata",
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 6.0),
                          Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ImageCarouselWidget extends StatelessWidget {
  const ImageCarouselWidget({super.key, required this.img});
  final String img;
  @override
  Widget build(BuildContext context) {
    return Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            img,
            fit: BoxFit.fill,
          );
        },
        itemCount: img.length);
  }
}

class RecyclerViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text("hola"),
        Text("hola"),
        Text("hola"),
        Text("hola"),
        Text("hola"),
        Text("hola"),
        Text("hola"),
        Text("hola"),
        Text("hola"),
        Text("hola"),
      ],
    );
  }
}
