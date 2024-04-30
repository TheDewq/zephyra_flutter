import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:zephyra_flutter/ui/views/home_items/bottom_carrusel_item.dart';

class home_view extends StatelessWidget {
  final top_images = [
    "https://i.redd.it/rfftqdg5flv71.jpg",
    "https://img.freepik.com/premium-photo/3d-style-random-abstract-futuristic-technology-graphic-banner-background-wallpaper-generative-ai_159242-26294.jpg"
  ];
  home_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [titulo(), top_carrusel(top_images), secciones()],
    ));
  }
}

Widget titulo() {
  return Text("Titulo");
}

Widget top_carrusel(imagenes) {
  return Container(
    width: double.infinity,
    height: 250,
    child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            imagenes[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: 2),
  );
}

Widget secciones() {
  return Row(
    children: [
      Expanded(
          child: RawMaterialButton(
        onPressed: () {},
        elevation: 2.0,
        fillColor: Colors.blue,
        child: Icon(
          Icons.pause,
          size: 35.0,
        ),
        padding: EdgeInsets.all(11.0),
        shape: CircleBorder(),
      )),
      Expanded(
          child: RawMaterialButton(
        onPressed: () {},
        elevation: 2.0,
        fillColor: Colors.blue,
        child: Icon(
          Icons.pause,
          size: 35.0,
        ),
        padding: EdgeInsets.all(11.0),
        shape: CircleBorder(),
      )),
      Expanded(
          child: RawMaterialButton(
        onPressed: () {},
        elevation: 2.0,
        fillColor: Colors.blue,
        child: Icon(
          Icons.pause,
          size: 35.0,
        ),
        padding: EdgeInsets.all(11.0),
        shape: CircleBorder(),
      )),
      Expanded(
          child: RawMaterialButton(
        onPressed: () {},
        elevation: 2.0,
        fillColor: Colors.blue,
        child: Icon(
          Icons.pause,
          size: 35.0,
        ),
        padding: EdgeInsets.all(11.0),
        shape: CircleBorder(),
      )),
      Expanded(
          child: RawMaterialButton(
        onPressed: () {},
        elevation: 2.0,
        fillColor: Colors.blue,
        child: Icon(
          Icons.pause,
          size: 35.0,
        ),
        padding: EdgeInsets.all(11.0),
        shape: CircleBorder(),
      ))
    ],
  );
}

Widget Bottom_carrusel(imagenes) {
  return Container(
      child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            bottom_carrusel_item(imagenes[index]);
          },
          itemCount: 5));
}
