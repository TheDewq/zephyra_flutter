import 'package:flutter/material.dart';

class BottomCarruselItem extends StatelessWidget {
  final String imagen;

  const BottomCarruselItem({Key? key, required this.imagen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("¡Funciona!");
      },
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
            image: NetworkImage(imagen),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
