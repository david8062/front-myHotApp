import 'package:flutter/material.dart'; //


List<Widget> getImagesList() {
  var image = Image.asset("assets/imagenes/imagenPrueba1.png",
    width: 100,
    height: 70,);

  List<Widget> listImages = [];

  for (int i = 0; i < 9; i++) {
    var customizedImage = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient:const LinearGradient(
          colors: [
            Color(0xFF990B0B),
            Color(0xFFFF9212),// Color final
          ],
          stops: [0.50, 1.0], // Porcentaje de cada color
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: image,
    );
    listImages.add(customizedImage);
  }

  return listImages.isEmpty ? [Container()] : listImages;
}

