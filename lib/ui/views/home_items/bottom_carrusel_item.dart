import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class HomeBottomCarouselItem extends StatelessWidget {
  const HomeBottomCarouselItem({super.key, imagen});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Agrega aquí la lógica para manejar el evento onTap
      },
      child: Container(
        padding: EdgeInsets.only(top: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: Image.network(
                      imagen), // Ajusta la ruta de la imagen según tu proyecto
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsets.all(10),
            ),
            SizedBox(
              width: 180,
              height: 180,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors
                      .grey, // Cambia el color de fondo según sea necesario
                ),
                padding: EdgeInsets.all(10),
              ),
            ),
            Container(
              width: 180,
              height: 180,
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 73,
                  height: 27,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                    ),
                    color: Colors
                        .blue, // Cambia el color de fondo según sea necesario
                  ),
                  child: Center(
                    child: Text(
                      "TextView",
                      style: TextStyle(
                        fontFamily: 'Alata',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
