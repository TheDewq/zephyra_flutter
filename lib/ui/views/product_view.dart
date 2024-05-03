import 'package:flutter/material.dart';
import 'package:zephyra_flutter/ui/views/product_items/product_item.dart';

class product_view extends StatefulWidget {
  product_view({super.key});
  @override
  State<product_view> createState() => _product_viewState();
}

class _product_viewState extends State<product_view> {
  final lista = [
    [
      "1",
      "item 1",
      "10000",
      "https://static.wikia.nocookie.net/kirby/images/d/d8/Kirby_aniversario.png/revision/latest/scale-to-width-down/250?cb=20170531193018"
    ],
    [
      "2",
      "item 2",
      "20202precio 2",
      "https://static.wikia.nocookie.net/kirby/images/9/90/KRTDL_Artwork_Kirby_Flotando.png/revision/latest/scale-to-width-down/250?cb=20120702010531"
    ],
    [
      "3",
      "item 3",
      "65433",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Tilund_art_kirby.png/1200px-Tilund_art_kirby.png"
    ],
    [
      "4",
      "item 4",
      "67565",
      "https://w7.pngwing.com/pngs/162/808/png-transparent-kirby-mass-attack-kirby-s-dream-land-kirby-canvas-curse-gauntlet-kirby-heart-nintendo-video-game.png"
    ],
    [
      "5",
      "item 5",
      "44444",
      "https://cdn.wikirby.com/0/0d/Guard_KSSU_artwork.png"
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: List.generate(lista.length, (index) {
      return product_item(lista[index][0], lista[index][1], lista[index][2],
          lista[index][3], context);
    }));
  }
}
